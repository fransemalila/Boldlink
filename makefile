install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv hello.py


lint:
	pylint --disable=R,C hello.py

All: install lint test