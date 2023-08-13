FROM busybox
RUN mkdir -p /root/context1/context2
WORKDIR /root/context1/context2
RUN touch file1.txt
CMD ["/bin/sh"]
