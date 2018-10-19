#!/bin/bash
#sudo gem uninstall jasper2
sudo gem install _gems/jasper2-2.1.9.gem
bundle exec jekyll liveserve --host 0.0.0.0 --watch --force-polling
#bundle exec jekyll liveserve --host 0.0.0.0 --incremental --watch
#bundle exec jekyll serve --host 0.0.0.0 --incremental --watch --force_polling
#bundle exec jekyll serve --host 0.0.0.0 
