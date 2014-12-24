REPORTER = list

test:
	clear
	echo Starting test *********************************************************
	./node_modules/mocha/bin/mocha --harmony-collections
	echo Ending test

doc:
	clear
	echo Starting JSDOC *********************************************************
	jsdoc -c jsdoc-conf.json README-JSDOC.md
	echo Creating README.md *****************************************************
	rm -f README.md
	jsdoc2md --src lib/index.js template/utils.js template/index.js >>JSDOC.md
	cat README-JSDOC.md JSDOC.md History.md LICENSE > README.md
	rm -r -f JSDOC.md

.PHONY: test doc
