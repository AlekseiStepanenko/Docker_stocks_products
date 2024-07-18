FROM python:3.10-alpine
RUN apk add --no-cache gcc musl-dev linux-headers
WORKDIR /src
COPY ./requirements.txt ./requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["python3", "-u", "main.py", "--host", "0.0.0.0", "port", "8000"]