FROM python:3.8
ENV PYTHONUNBUFFERED 1

RUN mkdir /src
WORKDIR /src

ARG DATABASE_URL
ENV DATABASE_URL=$DATABASE_URL


ADD . /src/
RUN pip install pipenv
RUN pipenv install
EXPOSE 5000

CMD [ "./run_app.sh" ]
