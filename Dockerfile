FROM zhiqiangwang/proxy:ssh
RUN apt-get update 
RUN git config --global user.name "xqde"
RUN git config --global user.email "208893581+xqzde@users.noreply.github.com"
ENV SSH_USER=root
