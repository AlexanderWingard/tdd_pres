
.PHONY: test

test:
	erl -noinput -pa "." -eval 'make:all(), case eunit:test([{dir, "."}], [verbose]) of error -> init:stop(1); Result -> Result end.' -s init stop
