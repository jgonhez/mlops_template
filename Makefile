env:
	python -m venv .venv

install:
	pip install -r requirements.txt

testing:
	python -m pytest -vv --cov=src/mylibs test/test_*.py

set_dvc_remote:
	dvc remote add -d storage gdrive://1_OZ6WIQEoJbzRfBGzaZb8OIolWFSaQFv
