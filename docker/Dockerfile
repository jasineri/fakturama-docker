FROM debian:bullseye

ENV DEBIAN_FRONTEND="noninteractive"
ENV DISPLAY=":0.0"
ENV LANG=de_DE.UTF-8
ENV LANGUAGE=de_DE:en
ENV LC_ALL=de_DE.UTF-8

#COPY Installer_Fakturama_linux_x64_2.1.3c.deb /root/fakturama.deb

RUN apt-get update && \
    apt-get upgrade -y --no-install-recommends && \
    apt-get install -y locales xterm dbus dbus-x11 wget && \
    sed -i -e 's/# de_DE.UTF-8 UTF-8/de_DE.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen && \
    wget -O /root/fakturama.deb https://files.fakturama.info/release/v2.1.3/Installer_Fakturama_linux_x64_2.1.3c.deb && \
    dpkg -i /root/fakturama.deb && \
    apt-get install -f -y --no-install-recommends && \
    apt-get install -y libreoffice gvfs && \
    apt-get install -y --no-install-recommends libwebkit2gtk-4.0-37 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    chmod +x /usr/share/fakturama2/Fakturama

VOLUME ["/tmp/.X11-unix", "/root/.fakturama2", "/root/fakturama"]

ENTRYPOINT ["/usr/share/fakturama2/Fakturama"]