CODE_COVERAGE_FILENAME = coverage.cobertura.xml
DOCUMENTATION_DIR = docs
DOCUMENTATION_FILENAME = README.md
REPORTS_DIR = __reports
SOURCE_DIR = src
UNIT_TESTS_RESULTS_FILENAME = unittests.junit.xml

ci_install:
	python -m pip install --upgrade pip
	python -m pip install -r requirements.txt

ci_checks_prerequisites:
	python -m pip install mypy
	python -m pip install types-requests
	python -m pip install black
	python -m pip install isort
	python -m pip install flake8

ci_checks:
	make ci_checks_prerequisites
	mypy $(SOURCE_DIR)
	black --check $(SOURCE_DIR)
	isort --check-only $(SOURCE_DIR)
	flake8 $(SOURCE_DIR)

ci_tests_prerequisites:
	python -m pip install pytest
	python -m pip install pytest-cov

ci_tests:
	make ci_tests_prerequisites
	pytest --cov --cov-report xml:$(REPORTS_DIR)/$(CODE_COVERAGE_FILENAME) --cov-append --junitxml=$(REPORTS_DIR)/$(UNIT_TESTS_RESULTS_FILENAME) $(SOURCE_DIR)

docs:
	python -m pip install pydoc-markdown
	if [ -d $(DOCUMENTATION_DIR) ]; then rm -rf $(DOCUMENTATION_DIR); fi
	mkdir -p $(DOCUMENTATION_DIR)
	pydoc-markdown -I $(SOURCE_DIR) --render-toc > $(DOCUMENTATION_DIR)/$(DOCUMENTATION_FILENAME)