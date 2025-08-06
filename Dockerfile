# Galaxy - gaiac

FROM quay.io/bgruening/galaxy:24.2

# # Enable Conda dependency resolution
ENV GALAXY_CONFIG_BRAND="GAIAC" \
    GALAXY_CONFIG_CONDA_AUTO_INSTALL=True

# # Install toolsz, cleanup
COPY config/gaiac.yml /etc/galaxy/tools.yml

ADD gravity.yml /etc/galaxy/gravity.yml
ADD install_tools_wrapper.sh /usr/bin/install-tools

RUN chmod +x /usr/bin/install-tools
RUN install-tools  /etc/galaxy/tools.yml

ADD gravity_2.yml /etc/galaxy/gravity.yml
ADD all.yml /ansible/group_vars/all.yml
# RUN cp -rf /galaxy/database /galaxy/database_2
ADD all.yml /ansible/group_vars/all.yml
