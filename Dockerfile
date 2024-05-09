# Use an official Python runtime based on Debian 11 "buster" as a parent image.
FROM python:3.11-slim-buster

# Add user that will be used in the container.
RUN useradd app

# Port used by this container to serve HTTP.
EXPOSE 80

# Set environment variables.
# 1. Force Python stdout and stderr streams to be unbuffered.
# 2. Set PORT variable that is used by Gunicorn. This should match "EXPOSE"
#    command.

# Use /app folder as a directory where the source code is stored.
WORKDIR /app

# Set this directory to be owned by the "app" user.
RUN chown app:app /app

# Install machine dependencies
RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash
RUN apt-get install -y nodejs

COPY .bin/prepare.sh /app/.bin/prepare.sh
RUN bash /app/.bin/prepare.sh

# Copy the source code of the project into the container.
RUN mkdir -p /home/app && chown app:app /home/app

# Use user "app" to run the build commands below and the server itself.
USER app

ENV PYTHONUNBUFFERED=1 \
    PATH=/home/app/.local/bin:$PATH \
    PORT=80 \
    PYTHONPATH=/usr/lib/python3/dist-packages