# Dockerfile

# ==> Choose a base image to emulate Linux distribution...
FROM williamyeh/ansible:ubuntu14.04

# ==> Copying Ansible playbook...
WORKDIR /tmp
COPY  .  /tmp

# ==> Creating inventory file...
RUN echo localhost > inventory

# ==> Executing Ansible...
RUN ansible-playbook -i inventory site.yml \
      --connection=local --sudo -vvvv
