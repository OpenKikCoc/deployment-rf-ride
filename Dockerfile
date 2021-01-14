FROM binacslee/xpra-base

RUN apk add --no-cache \
     gcc g++ make gtk+3.0-dev python2-dev \
    && pip2 install \
     robotframework==3.0.4 \
     robotframework-ride==1.7.4.2

# MODE more at http://xpra.org/trac/wiki/Usage
ENV MODE="tcp"               \
    DISPLAY=":99"            \
    SHELL="/bin/bash"        \
    SSHD_PORT="22"           \
    START_XORG="yes"         \
    XPRA_PASSWORD=123        \
    XPRA_HTML="yes"          \
    XPRA_MODE="start"        \
    XPRA_READONLY="no"       \
    XORG_DPI="96"            \
    XPRA_COMPRESS="0"        \
    XPRA_DPI="0"             \
    XPRA_ENCODING="rgb"      \
    XPRA_HTML_DPI="96"       \
    XPRA_KEYBOARD_SYNC="yes" \
    XPRA_MMAP="yes"          \
    XPRA_SHARING="yes"       \
    XPRA_TCP_PORT="10000"    \
    GID="1000"         \
    GNAME="xpra"       \
    SHELL="/bin/bash"  \
    UHOME="/home/xpra" \
    UID="1000"         \
    UNAME="xpra"

# ENTRYPOINT ["entry"]
# CMD ["xhost +"]