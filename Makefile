build:

install:
ifeq ($(INCLUDE_DEV), true)
	@echo "including dev dependencies"
	pipenv install --deploy --dev
else
	pipenv install --deploy
endif

test: test.lint

test.lint: test.lint.yaml

test.lint.yaml:
	pipenv run yamllint .
