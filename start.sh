#!/bin/sh

if [ "$HUGO_ENV" = "production" ]
then
  hugo --source=site --gc --minify "$@"
else
  hugo server --source=site --bind=0.0.0.0 --baseURL=http://0.0.0.0:1313 "$@"
fi