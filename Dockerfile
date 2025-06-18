FROM python:3.8-alpine
LABEL "com.github.actions.name"="S3 Sync Metadata (OIDC)"
LABEL "com.github.actions.description"="Sync HTML files to an AWS S3 bucket with proper content-type using OIDC"
LABEL "com.github.actions.icon"="refresh-cw"
LABEL "com.github.actions.color"="green"
ENV AWSCLI_VERSION='1.18.14'
RUN pip install --quiet --no-cache-dir awscli==${AWSCLI_VERSION}
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
