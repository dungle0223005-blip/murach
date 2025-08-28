# Base image: Tomcat 9 + JDK 21
FROM tomcat:9.0-jdk21

# Thư mục deploy mặc định của Tomcat
WORKDIR /usr/local/tomcat/webapps/

# Copy project code vào container (đặt vào /app)
COPY . /app

WORKDIR /app

# Cài Ant để build project
RUN apt-get update && apt-get install -y ant && rm -rf /var/lib/apt/lists/*

# Build project bằng Ant (tạo file .war trong dist/)
RUN ant clean && ant war

# Copy file .war vào Tomcat (đặt tên ROOT.war để chạy trực tiếp domain/)
RUN cp dist/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose cổng web mặc định
EXPOSE 8080

# Chạy Tomcat
CMD ["catalina.sh", "run"]
