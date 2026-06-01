#!/usr/bin/awk -f
NR == 1 { print $0, "총점", "평균" }
NR > 1 {
    sum = $3 + $4 + $5
    kor_sum += $3
    eng_sum += $4
    math_sum += $5
    printf "%s %s %d %d %d %d %.1f\n", $1, $2, $3, $4, $5, sum, sum/3
    count++
}
END {
    printf "과목 평균: %.1f %.1f %.1f\n", kor_sum/count, eng_sum/count, math_sum/count
}
