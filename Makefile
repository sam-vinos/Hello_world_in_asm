NAME=hello


all: $(NAME)

$(NAME): $(NAME).s
	as $^ -o $(NAME).o
	ld $(NAME).o -o $@


clean:
	rm $(NAME).o $(NAME)
