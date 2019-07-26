#!/bin/bash

# install latest version of docker the lazy way
curl -sSL https://get.docker.com | sh

# make it so you don't need to sudo to run docker commands
usermod -aG docker ubuntu

docker run --name ct -d -p 3000:3000 --restart always -e GOOGLE_CLIENT_ID='350610138321-2gs4su67cfudjnv86l9p1u5dt19kmhpq.apps.googleusercontent.com' -e GOOGLE_CLIENT_SECRET='b-9aqgbS3OXfZqsBfu0-a0jI' -e GOOGLE_REDIRECT_URL='http://3.222.225.23.xip.io/oauthcallback' parveenbhadoo/bhadoocloud node server/server.js --port 3000

systemctl enable ct
