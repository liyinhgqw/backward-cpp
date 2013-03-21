SRCDIR := test 

CXX := g++

# TODO: add my own build libs
LIBS := 
LDFLAGS := -lbfd
    
CPPFLAGS := -I. 

CXXFLAGS := -Wall -O0 -g2  
#VPATH = ${SRCDIR}

all: test/seg

test/seg.o: test/seg.cpp
	    ${CXX} ${CPPFLAGS} ${CXXFLAGS} -c -o $@ $<

test/fun.o: test/fun.cpp
	    ${CXX} ${CPPFLAGS} ${CXXFLAGS} -c -o $@ $<

test/seg : test/seg.o test/fun.o ${LIBS}
	    ${CXX} ${CPPFLAGS} ${CXXFLAGS} -o $@ $(filter %.o,$^) ${LDFLAGS}



