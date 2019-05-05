FROM centos
LABEL edu.uanet.grb23-devops.url=“https://github.com/bsm52/devops_final_project.git” \
      edu.uanet.grb23-devops.distro=“centos” \
      edu.uanet.grb23-devops.architecture=“x86_64”

# Update and install dependencies
RUN yum update -y && yum install -y \
    cmake \
    gcc-g++ \
    git

ARG GAME_URL='https://github.com/bsm52/devops_final_project.git'

# Download 2048 game source
RUN git clone $GAME_URL

WORKDIR devops_final_project
RUN mkdir /build
WORKDIR build
