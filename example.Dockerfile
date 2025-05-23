FROM python:3.11
WORKDIR /usr/src/app
COPY ./requirements.txt .
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD ["daphne", "-b", "127.0.0.1", "p", "8000", "connectify.asgi:application"]
