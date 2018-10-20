#!/bin/bash

#sudo gem uninstall jasper2

if [ "$1" == "gem" ]
then
    echo "Installing gem ..."
    sudo gem install _gems/jasper2-2.1.9.gem
fi

bundle exec jekyll liveserve --host 0.0.0.0 --watch
#bundle exec jekyll liveserve --host 0.0.0.0 --incremental --watch
#bundle exec jekyll serve --host 0.0.0.0 --incremental --watch --force_polling
#bundle exec jekyll serve --host 0.0.0.0 
