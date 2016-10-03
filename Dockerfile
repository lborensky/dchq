FROM wow73611/python

ONBUILD ADD requirements.txt /app/requirements.txt
ONBUILD RUN /usr/local/bin/pip install -r /app/requirements.txt
ONBUILD ADD main.py /app/main.py

WORKDIR /app
EXPOSE 8080

CMD ["/usr/bin/python", "/app/main.py"]
