FROM ubuntu:20.04

RUN apt-get -y update && \
    apt-get -y install software-properties-common && \
    apt-get install -y gcc-arm-none-eabi  && \
    apt-get install -y binutils-arm-none-eabi  && \
    apt-get -y install git cmake && \
    apt-get install -y python && \
    apt-get purge -y --auto-remove

RUN sed -i -e's/ main/ main contrib non-free/g' /etc/apt/sources.list  && \
    apt-get update  && \
    apt-get -y install make wget curl rar bzip2 librsvg2-bin && \
    apt-get -y install --no-install-recommends imagemagick && \
    curl -s https://api.github.com/repos/INTI-CMNB/KiAuto/releases/latest | grep "browser_download_url.*deb" | cut -d : -f 2,3 | tr -d \" | wget -i - && \
    curl -s https://api.github.com/repos/INTI-CMNB/KiBoM/releases/latest | grep "browser_download_url.*deb" | cut -d : -f 2,3 | tr -d \" | wget -i - && \
    curl -s https://api.github.com/repos/INTI-CMNB/InteractiveHtmlBom/releases/latest | grep "browser_download_url.*deb" | cut -d : -f 2,3 | tr -d \" | wget -i - && \
    curl -s https://api.github.com/repos/INTI-CMNB/PcbDraw/releases/latest | grep "browser_download_url.*deb" | cut -d : -f 2,3 | tr -d \" | wget -i - && \
    curl -s https://api.github.com/repos/INTI-CMNB/KiBot/releases/latest | grep "browser_download_url.*deb" | cut -d : -f 2,3 | tr -d \" | wget -i - && \
    apt -y install --no-install-recommends ./*.deb && \
    apt-get -y remove curl wget && \
    apt-get -y autoremove && \
    rm /*.deb && \
    rm -rf /var/lib/apt/lists/*