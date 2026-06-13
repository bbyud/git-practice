TARGET = base
OBJS = binary.o base.o

$(TARGET): $(OBJS)
	gcc $(OBJS) -o $(TARGET)

clean:
	rm -f $(OBJS) $(TARGET)
