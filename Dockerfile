# Galaxy - gaiac

FROM quay.io/bgruening/galaxy:24.2

# # Enable Conda dependency resolution
ENV GALAXY_CONFIG_BRAND="GAIAC" \
    GALAXY_CONFIG_CONDA_AUTO_INSTALL=True

# # Install toolsz, cleanup
COPY config/gaiac.yml /etc/galaxy/tools.yml

#tusd disabled in the gravidy configuration during tool installation 
COPY gravity.yml /etc/galaxy/gravity.yml
COPY install_tools_wrapper.sh /usr/bin/install-tools

RUN chmod +x /usr/bin/install-tools
RUN install-tools  /etc/galaxy/tools.yml

#Putting back the original gravity file extracted from the image so that it wont break the default settings. 
COPY gravity_2.yml /etc/galaxy/gravity.yml

# RUN chmod -R 777 /galaxy
# RUN chmod -R 777 /export
# COPY all.yml /ansible/group_vars/all.yml

VOLUME ["/export/", "/data/"]
