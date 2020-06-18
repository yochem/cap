check:
	pylint -d C0103,C0114,C0115,C0116,W0102 --exit-zero cap/
	mypy --disallow-untyped-defs --disallow-incomplete-defs cap/
	darglint -z short -m "{path}:{line}: {msg}" -v 2 cap/

doc:
	pdoc3 --html cap/ -o docs/ --force

install:
	pip3 install -r requirements.txt

development:
	pip3 install pdoc3 pylint autopep8 mypy darglint
