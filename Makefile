env:
	python -m venv .venv

install:
	pip install -r requirements.txt

testing:
	python -m pytest -vv --cov=src/mylibs test/test_*.py

update_dvc:
	pip install -U dvc[grive]

set_dvc_remote:
	dvc remote add -d storage gdrive://1_OZ6WIQEoJbzRfBGzaZb8OIolWFSaQFv

set_daghshub_remote:
	dvc remote add origin s3://dvc
	dvc remote modify origin endpointurl https://dagshub.com/jgonhez/mlops_template.s3

set_daghshub_credentials:
	dvc remote modify origin --local access_key_id a1a7b54028c656e6b4732d5045d16b4e7eca96e6
	dvc remote modify origin --local secret_access_key a1a7b54028c656e6b4732d5045d16b4e7eca96e6