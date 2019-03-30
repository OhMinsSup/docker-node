# node.js 리눅스 기반 버전
FROM node:alpine 
# 앱 디렉터리 생성
WORKDIR /app
# 앱 의존성 설치
# 가능한 경우(npm@5+) package.json과 package-lock.json을 모두 복사하기 위해
# 와일드카드를 사용
COPY package*.json ./
RUN npm install 
# 앱 소스 추가
COPY . .
CMD ["npm", "run", "start"]
