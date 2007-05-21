
ERROR_CFLAGS = \
	-Wall \
	-Werror \
	-Wextra \
	-Wundef \
	-Wnested-externs \
	-Wwrite-strings \
	-Wpointer-arith \
	-Wbad-function-cast \
	-Wmissing-declarations \
	-Wmissing-prototypes \
	-Wstrict-prototypes \
	-Wredundant-decls \
	-Wno-unused-parameter
# -Wold-style-definition -Winline -Wunreachable-code

CLEANFILES = *.gcno *.gcda

check-valgrind:
	$(MAKE) TESTS_ENVIRONMENT="sh $(abspath $(top_srcdir))/scripts/valgrind.sh" check

.PHONY: check-valgrind
