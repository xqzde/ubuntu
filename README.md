## Ubuntu SSH Docker Image

这是一个基于 `ubuntu:22.04` 的自定义镜像，内置 SSH 服务、Git 配置、常用命令工具，并支持通过用户名和密码登录 SSH。

## 🔧 功能特点

- 开启 SSH 服务，支持密码登录
- 默认开启 root 用户登录（或自定义用户）
- 预装常用工具：`git`, `vim`, `curl`, `jq`, `net-tools`, `dnsutils`, `ping` 等
- 自动设置 Git 用户信息
- 可通过环境变量指定 SSH 登录用户名和密码

---

## 📦 构建镜像

确保你在 Dockerfile 所在目录中：

```bash
docker run -d --name xq-ubuntu -e SSH_USER=ubuntu -e SSH_PASSWORD=123456 -p 8022:22 ghcr.io/xq404/ubuntu:latest
```

## 🔐 SSH 连接方式

使用 SSH 连接容器（假设本地端口为 8022）

~~~
ssh ubuntu@localhost -p 8022
~~~

## 📝 可自定义环境变量

| 变量名         | 默认值   | 说明                  |
| -------------- | -------- | --------------------- |
| `SSH_USER`     | `ubuntu` | 创建的 SSH 登录用户名 |
| `SSH_PASSWORD` | `123456` | SSH 登录用户的密码    |
