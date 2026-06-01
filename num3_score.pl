#!/usr/bin/perl
use strict;
use warnings;

my @col_sums; # 과목별 합계를 저장할 배열
my $count = 0;

print "학번 이름 국어 영어 수학... 총점 평균\n";

# 표준 입력(또는 파일)으로부터 한 줄씩 읽기
while (my $line = <STDIN>) {
    chomp($line);
    
    # 첫 줄(헤더)은 건너뜁니다
    next if $line =~ /학번/; 
    
    # 공백을 기준으로 줄을 나누어 배열에 저장
    my @fields = split(/\s+/, $line);
    
    my $sum = 0;
    # 3번째 필드(인덱스 2)부터 마지막까지 순회하며 합계 계산
    for (my $i = 2; $i < @fields; $i++) {
        $sum += $fields[$i];
        $col_sums[$i] += $fields[$i]; # 과목별 합계 누적
    }
    
    # 평균 계산 (과목 개수 = 필드 전체 개수 - 2)
    my $num_subjects = @fields - 2;
    my $avg = $sum / $num_subjects;
    
    # 결과 출력
    printf("%s %s ", $fields[0], $fields[1]);
    for (my $i = 2; $i < @fields; $i++) {
        printf("%d ", $fields[$i]);
    }
    printf("%d %.1f\n", $sum, $avg);
    
    $count++;
}

# 모든 데이터 처리 후 과목 평균 출력
print "--------------------------------------------\n";
printf "과목 평균:      ";
for (my $i = 2; $i < @col_sums; $i++) {
    printf("%.1f ", $col_sums[$i] / $count);
}
print "\n";
