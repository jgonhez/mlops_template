env:
	python -m venv .venv

install:
	pip install -r requirements.txt

test:
	pytest test_*.py
