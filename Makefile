build:

ci_setup:
	pipenv install --deploy --dev

setup:
	pipenv install --dev

test: test.lint

test.lint: test.lint.yaml

test.lint.yaml:
	pipenv run yamllint .
