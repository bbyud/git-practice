#!/bin/bash
echo -n "파일/디렉토리 이름 입력: "
read name
if [ ! -e "$name" ]; then
    echo "$name은 존재하지 않습니다."
elif [ -d "$name" ]; then echo "$name은 디렉토리입니다."
elif [ -h "$name" ]; then echo "$name은 심볼릭링크입니다."
elif [ -c "$name" ]; then echo "$name은 문자장치입니다."
elif [ -b "$name" ]; then echo "$name은 블록장치입니다."
elif [ -p "$name" ]; then echo "$name은 파이프입니다."
elif [ -S "$name" ]; then echo "$name은 소켓입니다."
else echo "$name은 보통파일입니다."
fi
