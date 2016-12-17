# TeX Dockerized

> Effortless LaTeX compilation leveraging Docker and Compose

TeX Dockerized is a complete solution for compiling LaTeX documents without ever having to install and maintain a TeX distribution. Compilation is instead done transparently through a Docker container and wrapped up in Docker Compose.

## Requirements

* [Docker Engine](https://docs.docker.com/installation/)
* [Docker Compose](https://docs.docker.com/compose/)
* [Docker Machine](https://docs.docker.com/machine/) (Mac and Windows only)

## Running

Set up a Docker Machine and then run:

```console
$ docker-compose run tex [src/tex/<your-main>.tex]
```

That's it! When finished, you'll find a compiled PDF in the root of the repository. Whenever the above command is run again, an incremental compilation will be performed. Note that if you don't specify a main TeX file, `src/tex/index.tex` is assumed.

## License

Copyright &copy; 2016 [Kasper Kronborg Isager](http://github.com/kasperisager). Licensed under the terms of the [MIT license](LICENSE.md).
