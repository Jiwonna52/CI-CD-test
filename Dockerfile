# 기본 이미지로 Java 17을 사용
FROM openjdk:17-slim

# 컨테이너 내 애플리케이션 파일을 저장할 디렉터리 생성
WORKDIR /app

# 빌드한 JAR 파일을 컨테이너로 복사
# 빌드 컨텍스트 루트에 위치한 target/myapplication-0.0.1-SNAPSHOT.jar 파일을 가정함
# 파일 위치와 이름은 실제 프로젝트에 맞게 조정 필요
COPY build/libs/*.jar app.jar

# 컨테이너 실행 시 애플리케이션 실행
ENTRYPOINT ["java","-jar","/app/app.jar"]
