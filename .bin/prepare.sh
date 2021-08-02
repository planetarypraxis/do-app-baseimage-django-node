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
    libmagickwand-dev \
    libmagickcore5-extra \
    libgraphicsmagick++1-dev \
    libboost-python-dev \
    libtiff5-dev libopenjp2-7-dev zlib1g-dev \
    libfreetype6-dev liblcms2-dev libwebp-dev tcl8.6-dev tk8.6-dev python3-tk \
    libharfbuzz-dev libfribidi-dev libxcb1-dev \
    python-dev libxml2-dev libxslt1-dev antiword unrtf poppler-utils tesseract-ocr \
    flac ffmpeg lame libmad0 libsox-fmt-mp3 sox libjpeg-dev swig libpulse-dev \
    libpoppler-cpp-dev pkg-config python3-dev ghostscript

# Install pip dependencies that are either needed globally, or _very_ expensive to build
pip install Wand pipenv

npm i -g yarn
