FROM node:8-alpine

RUN apk upgrade --update && apk add \
            libpng  \
            libpng-dev \
            bzip2 \
            g++ \
            gcc \
            gnupg \
            libgcc \
            make \
            autoconf \
            automake \
            libtool \
            nasm && \
            rm /var/cache/apk/*

EXPOSE 3000

CMD ["npm", "run", "start:production"]
