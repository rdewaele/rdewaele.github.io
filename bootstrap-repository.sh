#!/bin/sh

if [ ! -e docs ]; then
	mkdir docs
fi

docker run -v $PWD:/srv/jekyll jekyll/jekyll:3.8.5 jekyll new docs
patch -Np0 < Gemfile.patch
docker run -v $PWD/docs:/srv/jekyll jekyll/jekyll:3.8.5 bundle update
docker-compose up
