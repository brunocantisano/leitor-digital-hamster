FROM openjdk:8

LABEL version latest
LABEL description Container java para usar o dispositivo HAMSTER DX HFDU06

RUN apt-get update \
    && apt-get install build-essential \
    && curl -Sf https://bit.ly/2TEFcTl -o eNBioBSP_Driver_Linux_HamsterDX_v1.0.4-5.1_2018.08.22.tgz​​ \
    && cp eNBioBSP_Driver_Linux_HamsterDX_v1.0.4-5.1_2018.08.22.tgz​​ ~/ \
    && tar -xzvf ~/eNBioBSP_Driver_Linux_HamsterDX_v1.0.4-5.1_2018.08.22.tgz \
    && ~/eNBioBSP_Driver_Linux_HamsterDX_v1.0.4-5.1_2018.08.22/VenusDrv-v1.0.4-5.1-Ubuntu11.04~Ubuntu18.04-64bit/install.sh