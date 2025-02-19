## Use the official Qt image as the base image (or an Ubuntu image if you prefer to set up Qt yourself)
FROM ubuntu:24.04

# Install dependencies for Qt
RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update && apt-get install -y \
    x11-apps \
    build-essential \
    qt5-qmake \
    qtbase5-dev \
    qtdeclarative5-dev \
    qtquickcontrols2-5-dev \
    qml-module-qtquick-controls2 \
    qml-module-qtquick2 \
    qml-module-qtquick-window2 \
    libqt5qml5 \
    libqt5core5a \
    libqt5gui5 \
    libqt5quick5 \
    libqt5widgets5 \
    g++ \
    && rm -rf /var/lib/apt/lists/*

# Set the environment for X11 display
ENV DISPLAY=${DISPLAY}

# Set the working directory
WORKDIR /app

# Copy your Qt QML project into the Docker container
COPY . /app

RUN cd /app
RUN ls

RUN /usr/lib/x86_64-linux-gnu/qt5/bin/qmake && make

RUN ls

CMD ["./sample"]
