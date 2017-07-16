FROM p13i/docker-pyenv

MAINTAINER https://github.com/p13i/docker-tox

# Install multiple Python versions
RUN pyenv install 2.6.6
RUN pyenv install 2.7
RUN pyenv install 3.1
RUN pyenv install 3.2
RUN pyenv install 3.3.0
RUN pyenv install 3.4.0
RUN pyenv install 3.5.0
RUN pyenv install 3.6.0
