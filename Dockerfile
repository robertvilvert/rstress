FROM ruby:2.5


COPY . .

RUN apt-get update && apt-get install redis-tools -y && \
    gem install redis && chmod +x ./entrypoint.sh


ENTRYPOINT ["./entrypoint.sh"]
