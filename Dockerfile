FROM centos:centos8.3.2011
RUN curl -O http://mirror.keystealth.org/gnu/emacs/emacs-27.1.tar.gz
RUN tar -zxvf emacs-27.1.tar.gz
RUN yum install -y yum-utils
RUN yum config-manager --set-enabled powertools
RUN yum install -y gcc-c++ make gnutls-devel ncurses-devel git texinfo
RUN cd emacs-27.1 && ./configure && make && make install
CMD ["emacs"]
# RUN emacs --daemon
# CMD ["bash", "-c", "emacs; /bin/bash"]