#!/bin/bash
# longest-word: find longest string in a file
while [ -n "$1" ]; do  # 인수가 있는 동안 반복 [cite: 296]
    if [ -r "$1" ]; then  # 읽기 가능한지 확인 [cite: 38]
        max_len=0
        max_word=""
        for i in $(strings "$1"); do  # 파일 내용 문자열 추출 [cite: 273]
            len=$(echo $i | wc -c)  # 문자열 길이 계산 [cite: 120]
            if (( len > max_len )); then
                max_len=$len
                max_word=$i
            fi
        done
        echo "$1: '$max_word' ($max_len characters)"
    fi
    shift  # 다음 인수로 이동 [cite: 88]
done
