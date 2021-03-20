import shelve
import dbm
import sqlite3

import sys


def get_change(current, previous):
    if current == previous:
        return 0.0
    try:
        a = (abs(float(current) - float(previous)) / float(previous)) * 100.0
        if current < previous:
            a = a * -1.0
        return a
    except ZeroDivisionError:
        return float('inf')


print("\nELF SIZE BREAKDOWN")

arm_size = sys.stdin.read()

sections_name = arm_size.split('\n')[0].split()
sections_size = arm_size.split('\n')[1].split()

sections = dict(zip(sections_name, sections_size))

prgrm_file = shelve.open('../scripts/prgrm_size.db', 'c')

# TODO: REFORMAT CHANGE TEXT INTO ONE LINE WITH FILENAME AS HEADING
# TODO: LIMIT THE AMOUNT OF DATA THE LIST STORES; TREAT AS QUEUE
for section_key in sections:
    try:
        section = prgrm_file[section_key]
        section.append(sections[section_key])
        prgrm_file[section_key] = section

        # Calculate percent difference except for section_key filename
        # Can append filename for final print
        if section_key != 'filename':
            last = int(section[-2], 16)
            curr = int(section[-1], 16)

            print('\t{} \t {:.2f}% \t {} KB -> {} KB'.format(
                section_key, get_change(curr, last), last, curr))
    except KeyError:
        # DB is empty, init
        prgrm_file[section_key] = [sections[section_key]]


# print(prgrm_file)
