FROM sanjayboddu/ensembl-web-libs:v1

WORKDIR ${ENSEMBL_SOFTWARE_DEPENDENCIES_LOCATION}/linuxbrew-automation

RUN git pull
USER www

RUN source ${HOME}/.bashrc && /bin/bash -c "time source 02-additional-libraries.sh"
