FROM node:12-alpine3.9

ENV HUGO_VERSION=0.74.3

WORKDIR /bin

RUN wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz \
  && tar -xzvf hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz hugo \
  && rm hugo_extended_${HUGO_VERSION}_Linux-64bit.tar.gz \
  && apk add --no-cache libstdc++ libc6-compat

WORKDIR /usr/src/site

COPY ./src/package*.json ./

RUN npm install

COPY ./src .

EXPOSE 1313

ENTRYPOINT [ "hugo" ]