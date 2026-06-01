#!/usr/bin/perl
use strict;
use warnings;

# 단어와 빈도수를 저장할 연관 배열(해시) 선언
my %counts;

print "단어들을 입력하세요 (입력을 마치려면 Ctrl+D를 누르세요):\n";

# 표준 입력으로부터 한 줄씩 읽어오기
while (my $line = <STDIN>) {
    # 줄 끝의 개행 문자 제거
    chomp($line);
    
    # 입력된 단어를 키(key)로 하여 빈도수(value) 1 증가
    $counts{$line}++;
}

print "\n--- 단어 발생 빈도 ---\n";

# 연관 배열의 키(단어)들을 정렬하여 출력
foreach my $word (sort keys %counts) {
    print "$word: $counts{$word}회\n";
}
