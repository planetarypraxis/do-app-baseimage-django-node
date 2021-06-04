set -e

apt-get update -y
apt-get install --yes --quiet --no-install-recommends \
    curl \
    build-essential \
    libpq-dev \
    libmariadbclient-dev \
    libjpeg62-turbo-dev \
    zlib1g-dev \
    libwebp-dev \
    binutils \
    libproj-dev \
    gdal-bin \
    g++ \
    libgraphicsmagick++1-dev \
    libboost-python-dev \
    libtiff5-dev libopenjp2-7-dev zlib1g-dev \
    libfreetype6-dev liblcms2-dev libwebp-dev tcl8.6-dev tk8.6-dev python3-tk \
    libharfbuzz-dev libfribidi-dev libxcb1-dev

npm i -g yarn
