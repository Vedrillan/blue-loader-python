FROM python:3

WORKDIR /srv

RUN apt-get update \
    && apt-get -y install \
        libudev-dev \
        libusb-1.0-0-dev

COPY . /srv

RUN pip install -e .

ENTRYPOINT ["python"]
CMD ["--help"]