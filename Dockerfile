# 베이스 이미지로 OpenJDK 17 버전을 사용
FROM eclipse-temurin:17-jdk

# 빌드된 JAR 파일이 위치할 경로
ARG JAR_FILE=build/libs/*.jar

# 컨테이너 내부에 JAR 파일을 app.jar 라는 이름으로 복사
COPY ${JAR_FILE} app.jar

# 애플리케이션 실행
ENTRYPOINT ["java","-jar","/app.jar"]