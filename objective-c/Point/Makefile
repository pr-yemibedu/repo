PROGNAME = Point
CC = gcc
CFLAGS = -g -O2
LIBS = -lobjc -lm
OBJECTS = Point.o

$(PROGNAME) : $(OBJECTS)
	$(CC) $(CFLAGS) $(OBJECTS) -o $(PROGNAME) $(LIBS)

%.o : %.m
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f *.o

