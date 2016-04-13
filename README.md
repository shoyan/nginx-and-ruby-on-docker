# nginx-and-ruby-on-docker
Nginx and ruby be installed with the chef on a docker.

### Usage
```
$ docker build -t nginx-and-ruby .
$ docker run --privileged -d --name nginx-and-ruby image_id /sbin/init
$ docker exec -it nginx-and-ruby bash
# chef-client -z -j node/bootstrap.json -c client.rb
```
