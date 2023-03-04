FROM ubuntu:22.04

# install with a -y flag means install non-interactively and assume a yes
RUN apt update && apt install -y software-properties-common && add-apt-repository --yes --update ppa:ansible/ansible
# because ubuntu doesnt come with tzdata configured, we must configure it for non-interactive andible installation in the next step
RUN DEBIAN_FRONTEND=noninteractive TZ="Asia/Dubai" apt-get -y install tzdata
RUN apt install -y ansible 
RUN ansible --version



