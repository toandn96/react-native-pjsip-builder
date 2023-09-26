FROM ubuntu:latest

RUN apt-get -y upgrade && \
    apt-get -y dist-upgrade && \
    apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get -y install \
    wget unzip


##############################
# Download VialerPJSIP until iOS version is not released
##############################

RUN mkdir -p /vialer/ && \
    cd /vialer/ && \
    wget https://github.com/toandn96/Vialer-pjsip-iOS/archive/refs/tags/v3.6.1.zip && \
    wget https://github.com/toandn96/Vialer-pjsip-iOS/raw/v3.6.1/VialerPJSIP.framework/Versions/A/VialerPJSIP && \
    ls && \
    unzip v3.6.1.zip

RUN mkdir -p /dist/ios/VialerPJSIP.framework && \
    mv /vialer/Vialer-pjsip-iOS-3.6.1/VialerPJSIP.framework/Versions/Current/* /dist/ios/VialerPJSIP.framework && \
    mv /vialer/VialerPJSIP /dist/ios/VialerPJSIP.framework/VialerPJSIP