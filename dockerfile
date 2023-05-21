FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y

# jekyll
RUN apt-get install -y ruby-full build-essential zlib1g-dev
RUN gem install jekyll bundler

# purgecss
RUN apt-get install -y nodejs npm
RUN npm i -g purgecss

WORKDIR /site

CMD ["jekyll", "serve", "--host", "0.0.0.0"]
