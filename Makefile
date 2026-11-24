CC      = gcc
CFLAGS  ?= -Wall -Wextra -std=c11
OUT     := out
CONSOLE := c/console

CONSOLE_BINS := \
	$(OUT)/array_occurrence_counter \
	$(OUT)/number_guessing_game \
	$(OUT)/movie_catalog_writer \
	$(OUT)/sequence_min_max \
	$(OUT)/barbershop_scheduler

.PHONY: all clean dirs

all: dirs $(CONSOLE_BINS)

dirs:
	@mkdir -p $(OUT)

$(OUT)/array_occurrence_counter: $(CONSOLE)/array_occurrence_counter.c
	$(CC) $(CFLAGS) $< -o $@

$(OUT)/number_guessing_game: $(CONSOLE)/number_guessing_game.c
	$(CC) $(CFLAGS) $< -o $@

$(OUT)/movie_catalog_writer: $(CONSOLE)/movie_catalog_writer.c
	$(CC) $(CFLAGS) $< -o $@

$(OUT)/sequence_min_max: $(CONSOLE)/sequence_min_max.c
	$(CC) $(CFLAGS) $< -o $@

$(OUT)/barbershop_scheduler: $(CONSOLE)/barbershop_scheduler.c $(CONSOLE)/barbershop_menu.h
	$(CC) $(CFLAGS) $(CONSOLE)/barbershop_scheduler.c -o $@

clean:
	rm -rf $(OUT)
