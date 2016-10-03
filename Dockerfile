FROM wow73611/python

COPY requirements.txt /app/requirements.txt
RUN /usr/local/bin/pip install -r /app/requirements.txt
COPY main.py /app/main.py

WORKDIR /app
EXPOSE 8080

CMD ["/usr/bin/python", "/app/main.py"]
