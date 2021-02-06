.POSIX:
.PHONY: all lint format clean

all: lint format

lint:
	python3 -m mypy *.py

format:
	black *.py --line-length 80

clean:
	rm -rf __pycache__/
	rm -rf .mypy_cache/
