#!/bin/zsh

# 실행환경 USER NAME 설정
if ! grep -q 'RUNNER_USER_NAME' ~/.zshrc; then
  echo "export RUNNER_USER_NAME=`whoami`" >> ~/.zshrc
fi

# 암호화키 담당자 문의
if ! grep -q 'ENCRYPTION_KEY' ~/.zshrc; then
  echo "export ENCRYPTION_KEY=담당자에게받은암호화키" >> ~/.zshrc
fi

# 실행 프로파일 로컬로 설정
if ! grep -q 'spring.profiles.active' ~/.zshrc; then
  echo "export spring.profiles.active=local" >> ~/.zshrc
fi

# 환경변수 적용
source ~/.zshrc
