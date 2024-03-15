# 환경설정
백엔드 환경설정(Mac 기준) <br>
### 필요 환경
* java 17
* docker 
* docker-compose
* local 환경변수

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

## 환겨변수 설정
```zsh
echo "export ENCRYPTION_KEY=$(openssl rand -base64 9 | head -c 12)" >> ~/.zshrc && source ~/.zshrc
```

## 단축 스크립트
```zsh
./run_docker.sh
./run_mysql.sh
./import_env.sh
```
