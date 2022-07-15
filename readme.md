Include in a docker file as a RUN command. For example

```
RUN curl -LO https://raw.githubusercontent.com/Shutch/docker-scripts/main/install-nvim.sh && \
  chmod +x install-nvim.sh && \
  ./install-nvim.sh
```
