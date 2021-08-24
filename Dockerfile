# Pull base image.
FROM ubuntu
LABEL maintainer="mcintyrehh & jackintyre"

# Install hddtemp
RUN apt-get update && apt-get -y install build-essential hddtemp

COPY hddtemp.db /etc/

# Define default command.
# example = -d --listen localhost --port 7634 /dev/s*
CMD hddtemp -h