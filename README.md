# 환경설정
백엔드 환경설정(Mac 기준) <br>
### 필요 환경
* java 17
* docker 
* docker-compose
* local 환경변수
* 드림시큐리티 dat 파일 저장

<hr/>

## Java 17 설치
```zsh
brew install openjdk@17
sudo ln -sfn /opt/homebrew/opt/openjdk@17/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-17.jdk
echo 'export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"' >> ~/.zshrc && source ~/.zshrc
```

## Docker Desktop 설치 & 실행
```zsh
brew install cask docker
open /Applications/Docker.app/
```

## Mysql 실행
```zsh
docker-compose -f ./mysql/docker-compose.yml up -d
```

## 환경변수 설정
```zsh
# 암호화키 담당자 문의
if ! grep -q 'ENCRYPTION_KEY' ~/.zshrc; then
  echo "export ENCRYPTION_KEY=암호화키" >> ~/.zshrc
fi

# 실행 프로파일 로컬로 설정
if ! grep -q 'spring.profiles.active' ~/.zshrc; then
  echo "export spring.profiles.active=local" >> ~/.zshrc
fi
```

## DAT 파일 저장
```zsh
# 해당 경로에 드림시큐리티 dat 파일 다운로드 파일은 담당자에게 문의
mkdir -p /etc/sujanggo_api/mobileOK/
```


## 단축 스크립트
```zsh
./run_docker.sh
./run_mysql.sh
```
