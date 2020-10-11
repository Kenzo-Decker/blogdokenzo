FROM ruby:2.7-alpine

RUN apk add --no-cache build-base gcc bash cmake git
RUN gem install bundler jekyll

WORKDIR C:\Users\Luca_\OneDrive\Documentos\POLI\SI\Lab2_Entrega\blogdokenzo\
COPY blogdokenzo .

EXPOSE 4000
RUN bundle install
CMD [ "bundle", "exec", "jekyll", "serve", "-H", "0.0.0.0" ]