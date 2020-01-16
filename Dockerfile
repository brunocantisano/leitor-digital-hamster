FROM openjdk:8

LABEL version latest
LABEL description Container java para usar o dispositivo HAMSTER DX HFDU06

RUN apt-get update -y \
    && apt-get install -y build-essential
RUN curl -L -o file.tgz https://bit.ly/2TEFcTl​​
RUN tar -xvf file.tgz
RUN cd eNBioBSP_Driver_Linux_HamsterDX_v1.0.4-5.1_2018.08.22/VenusDrv-v1.0.4-5.1-Ubuntu11.04~Ubuntu18.04-64bit
RUN install.sh
