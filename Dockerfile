FROM ghcr.io/qtvhao/python-3.12-bookworm:main

COPY requirements.txt /app/
RUN . venv/bin/activate && pip3 install --no-cache-dir -r requirements.txt

COPY app.js .
RUN node app.js
