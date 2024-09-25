CC := gcc #编译器

VPATH := hw main shapes #自动寻找的目录

SRC := main.c hw.c hw.h #源文件

OBJ := $(SRC:.c=.o) #目标文件, 由.c更换为.o

EXEC := main #执行文件

all: $(EXEC) #目标all, 依赖main

$(EXEC): $(OBJ) #main依赖.o文件, $^是所有依赖文件 $@是目标文件
	$(CC) $^ -o $@

%.o: %.c #将所有的.c文件编译为.o文件, $<是第一个依赖文件, -c是生成.o文件
	$(CC) -c $< -o $@

clean:
	rm -rf $(OBJ) $(EXEC)
#E:\msys64\clang64\bin\mingw32-make.exe all -f E:\clangC++\answer\C\make\Makefile -C E:\clangC++\answer\C\make\
