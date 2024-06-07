FROM python:alpine-3.15
ADD . /app
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5004

ENTRYPOINT [ "python","./app.py" ]