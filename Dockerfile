FROM teeks99/boost-cpp-docker:gcc-8

RUN apt-get update -y && apt-get install -y \
    python-pip \
    cmake

RUN pip3 install --upgrade pip
RUN pip3 install pipenv

CMD ["bash"]
