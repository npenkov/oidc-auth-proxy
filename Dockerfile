FROM openresty/openresty:alpine-fat

## install required dependencies for lua-crypto
## This could be optimized
RUN apk add --update openssl-dev git

## install lua-resty-openidc (and required dependencies)
RUN luarocks install lua-resty-openidc

CMD ["/usr/local/openresty/bin/openresty", "-g", "daemon off;"]
