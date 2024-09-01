# 使用官方 Nginx 镜像作为基础镜像
FROM nginx:alpine

# 将构建好的静态文件复制到 Nginx 默认的 HTML 目录
COPY public/ /usr/share/nginx/html/

# 暴露端口 80
EXPOSE 80

# 启动 Nginx
CMD ["nginx", "-g", "daemon off;"]
