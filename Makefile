build:

install:
ifeq ($(dev), true)
	pipenv install --deploy --dev
else
	pipenv install --deploy
endif

test: test.lint

test.lint: test.lint.yaml

test.lint.yaml:
	pipenv run yamllint .
