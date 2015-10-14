For building and running https://github.com/MonashBioinformaticsPlatform/RNAsik-REST
None of this is functional yet but will be an ongoing work in progress.

`sudo ansible-playbook -i local_server_hosts site.yml --verbose`

Or if docker is your thing..!

`docker build .`
`docker run --name ansible-rnasik -i -t c2b3b009cddd`

Or for interactive (then see the RNAsik-REST repo guide for running..)
`sudo docker run --name ansible-rnasik -i -t c2b3b009cddd /bin/bash`
