FROM wow73611/python

ONBUILD RUN virtualenv /env
ONBUILD ADD requirements.txt /app/requirements.txt
ONBUILD RUN /env/bin/pip install -r /app/requirements.txt
ONBUILD ADD . /app

WORKDIR /app
EXPOSE 8080

CMD ["/env/bin/python", "main.py"]
