CXX = g++
CXXFLAGS = -Wall -Werror -Wextra -pedantic -std=c++17 -g

SRC = source_code/*.cpp source_code/*.h
OBJ = $(SRC:.cc=.o)
EXEC = server.exe

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CXX) $(LDFLAGS) -o $@ $(OBJ) $(LBLIBS)

clean:
	rm -rf $(OBJ) $(EXEC)