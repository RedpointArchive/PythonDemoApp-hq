FROM python:3.7.1-stretch

WORKDIR /srv

COPY app/requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY entrypoint.sh /srv/entrypoint.sh
COPY app/ /srv/app

EXPOSE 8080

ENTRYPOINT [ "/srv/entrypoint.sh" ]
