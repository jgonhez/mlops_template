env:
	python -m venv .venv

install:
	pip install -r requirements.txt

test:
	python -m pytest -vv --cov=main --cov=mylib test_*.py
