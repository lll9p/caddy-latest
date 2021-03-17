#! /bin/bash
export PATH=$PATH:$PWD/go/bin
go install github.com/caddyserver/xcaddy/cmd/xcaddy@latest
xcaddy build \
    --output ./ \
    --with github.com/mholt/caddy-webdav \
    --with github.com/caddy-dns/dnspod \
    --with github.com/caddy-dns/cloudflare \
    --with github.com/caddyserver/format-encoder
