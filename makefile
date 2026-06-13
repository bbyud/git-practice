# 실행 파일 이름
TARGET = base

# 목적 파일들
OBJS = binary.o base.o

# 전체 빌드 규칙 (명령어 명시)
$(TARGET): $(OBJS)
	gcc binary.o base.o -o base

# 각 파일에 대한 컴파일 규칙 (명령어 명시)
binary.o: binary.c
	gcc -c binary.c -o binary.o

base.o: base.c
	gcc -c base.c -o base.o

# clean 규칙
clean:
	rm -f $(OBJS) $(TARGET)
