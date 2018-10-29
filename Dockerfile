FROM teeks99/boost-cpp-docker:gcc-8

RUN apt-get install software-properties-common \
    && add-apt-repository ppa:mhier/libboost-latest \
    && add-apt-repository ppa:george-edison55/cmake-3.x \
    && apt-get update -y \
    && apt-get install -y \
        libboost-all-dev \
        python3-pip \
        cmake

RUN pip3 install --upgrade pip
RUN pip3 install pipenv

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

CMD ["bash"]
