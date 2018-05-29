FROM elixir:alpine

MAINTAINER Your Name <your.email@example.com>

RUN mix local.hex --force

RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez

RUN mix local.rebar --force

RUN apk add --update nodejs

RUN npm install -g yarn

RUN yarn install

WORKDIR /app