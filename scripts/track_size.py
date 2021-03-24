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


# print("\nELF SIZE BREAKDOWN")

# arm_size = sys.stdin.read()

# sections_name = arm_size.split('\n')[0].split()
# sections_size = arm_size.split('\n')[1].split()

# sections = dict(zip(sections_name, sections_size))

# prgrm_file = shelve.open('../scripts/prgrm_size.db', 'c')

# # TODO: REFORMAT CHANGE TEXT INTO ONE LINE WITH FILENAME AS HEADING
# # TODO: LIMIT THE AMOUNT OF DATA THE LIST STORES; TREAT AS QUEUE
# for section_key in sections:
#     try:
#         section = prgrm_file[section_key]
#         section.append(sections[section_key])
#         prgrm_file[section_key] = section

#         # Calculate percent difference except for section_key filename
#         # Can append filename for final print
#         if section_key != 'filename':
#             last = int(section[-2], 16)
#             curr = int(section[-1], 16)

#             print('\t{} \t {:.2f}% \t {} KB -> {} KB'.format(
#                 section_key, get_change(curr, last), last, curr))
#     except KeyError:
#         # DB is empty, init
#         prgrm_file[section_key] = [sections[section_key]]


# # print(prgrm_file)

if __name__ == '__main__':
    arm_section_table = {
        'bss': 'UNINITIALIZED DATA',
        'hex': 'BSS+TEXT+DATA HEX',
        'text': 'FLASH',
        'dec': 'BSS+TEXT+DATA DEC',
        'data': 'INITIALIZED DATA',
    }

    # Validate arg length
    arg_len = len(sys.argv)
    if arg_len < 2 or arg_len> 2:
        print('\ntrack_size.py : Build script requires only one argument; ELF name')
        sys.exit()
    
    # Validate elf name if supplied as arg
    elf_name = sys.argv[1]
    if not (elf_name == 'drone.elf' or elf_name == 'transmitter.elf'):
         print('\ntrack_size.py : Only valid ELF names are transmitter.elf or drone.elf')
         sys.exit()

    print('\ntrack_size.py : {}'.format(elf_name.upper()))

    # Grab ARM size information
    arm_size = sys.stdin.read()

    sections_name = arm_size.split('\n')[0].split()
    sections_size = arm_size.split('\n')[1].split()

    # Open file that store information about the program sizes
    prgrm_file = shelve.open('../scripts/prgrm_size.db', 'c')

    # Grab elf specific portion of prgrm_file. Create elf section if does not exists
    # Store data
    elf_storage = None
    try:
        elf_storage = prgrm_file[elf_name]
    except KeyError:
        prgrm_file[elf_name] = []
        elf_storage = prgrm_file[elf_name]

    # Create a dictionary of the section names and keys
    sections = dict(zip(sections_name, sections_size))

    # Store data and calculate size only if key already exists
    try:
        elf_storage.append(sections)

        # Ensure the store never becomes larger then 100 elements
        if len(elf_storage) > 100:
            elf_storage.pop()

        prgrm_file[elf_name] = elf_storage

    except KeyError:
        prgrm_file[elf_name] = [sections]

    # Calculate size difference
    if len(prgrm_file[elf_name]) > 1:
        last_sz = prgrm_file[elf_name][-2]
        curr_sz = prgrm_file[elf_name][-1]

        for curr_key in curr_sz:
            if curr_key != 'filename':
                last = int(last_sz[curr_key], 16)
                curr = int(curr_sz[curr_key], 16)
                
                delta = get_change(curr, last)
                sign = '' if delta < 0 else '+'
            
                print('\t{} \t {}{:.2f}% \t {} KB -> {} KB \t{}'.format(
                    curr_key, sign, delta, last, curr, arm_section_table[curr_key]))
