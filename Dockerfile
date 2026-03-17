FROM ubuntu

RUN apt-get update && apt-get install -y curl \
   git \
   jq

RUN curl -sL https://agentgateway.dev/install | bash

USER ubuntu

RUN mkdir -p /home/ubuntu/agentgateway

RUN export PATH="$HOME/bin:$PATH"

WORKDIR /home/ubuntu/agentgateway

CMD ["agentgateway", "-f", "config.yaml"]
