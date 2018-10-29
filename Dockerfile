FROM teeks99/boost-cpp-docker:gcc-8

RUN apt-get update -y && apt-get install -y \
    python3-pip \
    libboost-all-dev \
    cmake

RUN pip3 install --upgrade pip
RUN pip3 install pipenv

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

CMD ["bash"]
