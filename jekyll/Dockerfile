FROM jekyll/jekyll
MAINTAINER Robie Lutsey <robie1373@gmail.com>

USER jekyll

RUN git config --global user.email robie1373@gmail.com
RUN git config --global user.name Robie
RUN git config --global push.default simple

WORKDIR /blog
RUN sudo chown -R jekyll .

RUN git clone https://github.com/robie1373/robie1373.github.io
RUN cd robie1373.github.io ; bundle install

ENTRYPOINT ["/bin/bash"]
