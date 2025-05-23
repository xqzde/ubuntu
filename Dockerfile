FROM zhiqiangwang/proxy:ssh
RUN apt-get update 
RUN git config --global user.name "xq404"
RUN git config --global user.email "208893581+xq404@users.noreply.github.com"