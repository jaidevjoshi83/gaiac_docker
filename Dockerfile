#Galaxy - GAIAC

ARG BASE_IMAGE=quay.io/bgruening/galaxy:25.1.1

FROM ${BASE_IMAGE}

LABEL maintainer="Jayadev Joshi <jaidev53ster@gmail.com>"

ENV GALAXY_CONFIG_BRAND GAIAC

# Install tools
ARG TOOL_FILE=gaiac.yml
COPY ${TOOL_FILE} $GALAXY_ROOT/tools.yaml

RUN install-tools $GALAXY_ROOT/tools.yaml
