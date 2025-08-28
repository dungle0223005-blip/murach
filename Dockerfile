# Base image: Tomcat 9 + JDK 21
FROM tomcat:9.0-jdk21

# Copy trực tiếp file WAR đã build sẵn vào Tomcat
COPY dist/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose cổng web mặc định
EXPOSE 8080

# Chạy Tomcat
CMD ["catalina.sh", "run"]
