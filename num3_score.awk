#!/usr/bin/awk -f
# 1. 헤더 출력
NR == 1 { print $0, "총점", "평균" }

# 2. 데이터 처리
NR > 1 {
    sum = 0
    # 3번 칸(과목)부터 마지막(NF)까지 반복하여 총점 및 과목별 합계 계산
    for (i = 3; i <= NF; i++) {
        sum += $i
        col_sum[i] += $i
    }
    avg = sum / (NF - 2)
    
    # 학생별 성적 출력
    printf "%s %s ", $1, $2
    for (i = 3; i <= NF; i++) printf "%d ", $i
    printf "%d %.1f\n", sum, avg
    count++
}

# 3. 모든 데이터 처리 후 과목 평균 출력
END {
    printf "과목 평균: "
    for (i = 3; i <= NF; i++) {
        printf "%.1f ", col_sum[i] / count
    }
    printf "\n"
}
