install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	# python -m pytest -vv test_hello.py
	python -m pytest --nbval Email_spam_with_TensorFlow.ipynb

format:
	pylint --disable=R,C hello.py

all: install lint test