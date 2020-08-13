# hudock

![](https://www.repostatus.org/badges/latest/wip.svg)

Docker image for building static websites with [Hugo](https://gohugo.io/), [postcss](https://postcss.org/) and [tailwindcss](https://tailwindcss.com/). 

## Why?

I use Hugo + tailwindcss a lot and I wanted to automate the process of starting a new site, creating a base template and installing the dependencies, which are very [specific versions](./src/package.json).

## Environment variables

- HUGO_ENV=development _(default)_

To build the site change the value of the `HUGO_ENV` variable to `production`

## Usage

1. Clone this repository
2. Select a mode:
    * Dev:

      ```sh
      docker container run \
        -v $(pwd)/src:/usr/src/site \
        -p 1313:1313 \
        --rm \
        ddazal/hudock
      ```

    * Build:

      ```sh
      docker container run \
        -v $(pwd)/src:/usr/src/site \
        -e HUGO_ENV=production \
        --rm \
        ddazal/hudock
      ```

Also, you can pass `hugo` flags as commands to the container:

```sh
docker container run -it --rm ddazal/hudock --verbose
```

## Back to basics

If you do not want to use Docker, but you want the setup for Hugo + tailwindcss you can still clone this repo, copy the files in the `src` folder and use your `hugo` installation as usual. __This image is using Hugo v0.74.3/extended__.