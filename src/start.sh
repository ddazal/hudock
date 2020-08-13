#!/bin/sh

if [ "$HUGO_ENV" = "production" ]
then
  hugo --gc --minify
else
  hugo server --bind=0.0.0.0 --baseURL=http://0.0.0.0:1313 --ignoreCache
fi