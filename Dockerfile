FROM ubuntu:18.04
LABEL edu.uanet.grb23-devops.url=“https://github.com/bsm52/devops_final_project.git” \
      edu.uanet.grb23-devops.distro=“ubuntu” \
      edu.uanet.grb23-devops.osversion=“18.04” \
      edu.uanet.grb23-devops.architecture=“x86_64”

# Update and install dependencies
RUN apt-get update -y && apt-get install -y \
    make \
    g++ \
    git

ARG 2048_URL='https://github.com/bsm52/devops_final_project.git'

# Download twitter-project source
RUN git clone $2048_URL

WORKDIR devops_final_project
RUN mkdir /build
WORKDIR build

RUN cmake make 2048_t
