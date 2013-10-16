FROM ubuntu

ADD install.sh /install.sh
RUN /install.sh
EXPOSE 7777
CMD ["/node_modules/.bin/tty.js", "-p", "7777"]
