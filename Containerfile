FROM quay.io/fedora/fedora-toolbox:43
MAINTAINER Steven Presti <spresti@redhat.com>
COPY . /pet
RUN cd /pet && ./build && rm -rf /pet
CMD ["/bin/bash"]
