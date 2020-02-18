# FROM alpine:latest
# MAINTAINER R0GGER

# # env variable
# ENV MAC b8:97:5a:f5:0c:24

# # install wol package
# RUN apk add --no-cache awake

# # start wake command
# CMD awake ${OPTIONS} ${MAC}


FROM ubuntu:latest
MAINTAINER docker@ekito.fr

RUN apt-get update \
    && apt-get -y install cron \
    && apt-get -y install etherwake

# Copy cron file to the cron.d directory
COPY cron /etc/cron.d/cron

# Give execution rights on the cron job
RUN chmod 0644 /etc/cron.d/cron

# Apply cron job
RUN crontab /etc/cron.d/cron

# Copy wake-on-lan.sh file
COPY wake-on-lan.sh .

# Give execution rights on the bash file
RUN chmod 0755 /wake-on-lan.sh

# Create the log file to be able to run tail
RUN touch /var/log/cron.log

# Run the command on container startup
CMD cron && tail -f /var/log/cron.log