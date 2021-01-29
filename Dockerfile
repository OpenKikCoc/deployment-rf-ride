FROM binacslee/novnc-base:baseimage

RUN apt-get update && \
    apt-get install -y \
        python-dev python-wxgtk3.0-dev && \
    curl https://bootstrap.pypa.io/2.7/get-pip.py | python2 && \
    pip install robotframework==3.0.4 robotframework-ride==2.0a1
