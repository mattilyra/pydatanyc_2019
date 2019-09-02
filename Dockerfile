FROM python:3.7

COPY get_data.sh /usr/src/app/
COPY Pipfile /usr/src/app/
COPY Pipfile.lock /usr/src/app

WORKDIR /usr/src/app/
RUN ./get_data.sh
RUN pip3 install pipenv
RUN pipenv install
