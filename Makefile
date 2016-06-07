
.PHONY: test

test:
	erl -noinput -pa "." -eval 'make:all(), case eunit:test([{dir, "."}], [verbose]) of error -> erlang:halt(1); Result -> Result end.' -s erlang halt
