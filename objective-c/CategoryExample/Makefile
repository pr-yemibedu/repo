PROGNAME = main
CC = gcc
CFLAGS = -g -O2 
LIBS = -lobjc -lm -framework foundation
OBJECTS = main.o

$(PROGNAME) : $(OBJECTS)
	$(CC) $(CFLAGS) $(OBJECTS) -o $(PROGNAME) $(LIBS)

%.o : %.m
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f *.o

