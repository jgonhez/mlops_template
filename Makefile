env:
	python -m venv .venv

install:
	pip install -r requirements.txt

testing:
	python -m pytest -vv --cov=src/mylibs test/test_*.py
