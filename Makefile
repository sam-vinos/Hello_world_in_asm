NAME=goodbye
LIST_CLEAN=$(NAME).o $(NAME)


all: $(NAME)

$(NAME): $(NAME).s
	as -o $(NAME).o $(NAME).s && ld -o $(NAME) $(NAME).o

clean:
	rm -f $(LIST_CLEAN)

rebuild: clean all
