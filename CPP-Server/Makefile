CXX = g++
CXXFLAGS = -Wall -Werror -Wextra -pedantic -std=c++17 -g

SRC = *.cpp *.h
OBJ = $(SRC:.cc=.o)
EXEC = server

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CXX) $(LDFLAGS) -o $@ $(OBJ) $(LBLIBS)

clean:
	rm -rf $(OBJ) $(EXEC)