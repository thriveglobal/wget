FROM alpine:3.19

LABEL "com.github.actions.name"="Github Action for wget"
LABEL "com.github.actions.description"="Wraps the wget CLI to be used in Github Actions"
LABEL "com.github.actions.icon"="download"
LABEL "com.github.actions.color"="gray-dark"

LABEL "repository"="http://github.com/thriveglobal/wget"
LABEL "homepage"="http://github.com/thriveglobal/wget"
LABEL "maintainer"="Thrive Global <helpdesk@thriveglobal.com>"

RUN apk add --no-cache ca-certificates=~20240226-r0

COPY *.sh /
RUN chmod +x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]
