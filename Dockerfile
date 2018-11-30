FROM python:3.7.1-stretch

WORKDIR /app

COPY app/requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY entrypoint.sh ./
COPY app/ ./

EXPOSE 8080

ENTRYPOINT [ "/app/entrypoint.sh" ]
