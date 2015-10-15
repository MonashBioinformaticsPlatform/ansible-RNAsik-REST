# Ansible RNAsik-REST

For building and running these two applications:
 * https://github.com/MonashBioinformaticsPlatform/RNAsik-pipe
 * The upcoming RESTful API to RNAsik-pipe: https://github.com/MonashBioinformaticsPlatform/RNAsik-REST

Supports Docker.

Currently, it only builds RNAsik, the tools it uses (bds, STAR etc) and loads a skeleton RESTful API.

 * Todo: Connect RNAsik-pipe to the tools so it actually works.
 * Todo: Create connections to input data and output data
 * Todo: Link to the RESTful API
 * Todo: Host the RESTful API on a (proper) web server
 * Todo: (separately) write a web interface so users can run RNAsik-pipe over the web!

The plan is to develop all of this in Docker from the start. This way, the person deploying the server (RNAsik/API/web interface) can do so easily and efficiently.

### Deploy docker container from pre-built docker image

I've built a docker image and put it in Docker Hub. This is the easiest way to get going and doesn't require checking out this repo.

https://hub.docker.com/r/monashbioinformaticsplatform/rnasik/tags/

Install Docker on your machine (google it!). Then..

`docker pull monashbioinformaticsplatform/rnasik:0.1`

Then run it (and log into it at the same time)

`docker run -it monashbioinformaticsplatform/rnasik:0.1 bash`

And `exit` to exit the Docker container. Find the name of the container you ran using `docker ps -a` and reconnect to it with `docker attach <container_name>`

### Build the docker image and run it

`git clone` this repo.

Run `docker build .` to execute the Ansible script. It downloads all the needed programs and builds a docker image.

Run it in the same way as above (except use `docker images` to find out the name of your newly built image to run).

You'll end up with the same result as above, except you built it yourself.

### Build the tools on my system without Docker!

Note: Be careful.. this will install tools on the system you run this on and may mess with your existing installed tools!

`git clone` this repo.

Edit `env_vars/local.yml` and change the username to your user. Note: I haven't tested this lately. If you're doing it on a fresh machine that you don't mind leaving a mess on, then making the username `root` is just as good.

Run:
`sudo ansible-playbook -i local_server_hosts site.yml --verbose`

### Build the tools on a remote system without Docker!

I'll leave this to you :) Learn about Ansible!

## Usage

Currently, apps are strewn about in `/home/root` on the Docker image (or /home/<yourusername> for non-docker).

I've written $PATHs to a file, so if you `source /etc/environment` in the Docker container you'll be able to execute all the tools.

Needs a lot more organisation!




`sudo ansible-playbook -i local_server_hosts site.yml --verbose`
