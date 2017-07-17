FROM p13i/docker-pyenv

MAINTAINER https://github.com/p13i/docker-tox

# Install multiple Python versions
# Based on this post, we'll only install the six most popular Python interpreter versions:
# https://hynek.me/articles/python3-2016/
RUN pyenv install 2.6.9
RUN pyenv install 2.7.13
RUN pyenv install 3.3.6
RUN pyenv install 3.4.6
RUN pyenv install 3.5.3
RUN pyenv install 3.6.1

# Set the interpreters globally
RUN pyenv global system 2.6.9 2.7.13 3.3.6 3.4.6 3.5.3 3.6.1

# Install tox
RUN pip install tox

# tox-pyenv causes tox to find Python interpreters using pyenv
RUN pip install tox-pyenv
