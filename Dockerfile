# Galaxy - dais

FROM bgruening/galaxy-stable:20.05

MAINTAINER jayadevjoshi12, jaidev53ster@gmail.com

# Enable Conda dependency resolution
ENV GALAXY_CONFIG_BRAND="GAIAC" \
    GALAXY_CONFIG_CONDA_AUTO_INSTALL=True

# Install tools, cleanup
COPY config/gaiac.yml $GALAXY_ROOT/tools.yaml
COPY config/tool_conf.xml $GALAXY_ROOT/config/tool_conf.xml

RUN install-tools $GALAXY_ROOT/tools.yaml && \
    /tool_deps/_conda/bin/conda clean --tarballs --yes > /dev/null && \
    rm /export/galaxy-central/ -rf && \
    mkdir -p $GALAXY_HOME/build_assets/workflows && \
    mkdir -p $GALAXY_HOME/build_assets/data_libraries

ENV GALAXY_CONFIG_TOOL_PATH=/galaxy-central/tools/

# Import workflows, cleanup
COPY config/bin/install-workflows /usr/bin/
COPY config/workflows/* $GALAXY_HOME/build_assets/workflows/
RUN install-workflows $GALAXY_HOME/build_assets/workflows/ --publish_workflows && \
    rm -rf /export/galaxy-central/

# Import libraries, preserve datasets, cleanup
COPY config/bin/install-libraries /usr/bin/
COPY config/data_library.yaml $GALAXY_HOME/build_assets/data_libraries/data_library.yaml
RUN install-libraries $GALAXY_HOME/build_assets/data_libraries/data_library.yaml && \
    rm -f /export/galaxy-central/database/files/url_paste* && \
    mkdir -p $GALAXY_ROOT/database/files && \
    mv /export/galaxy-central/database/files/* $GALAXY_ROOT/database/files/ && \
    rm -rf /export/galaxy-central/
