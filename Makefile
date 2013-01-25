MML_SOURCE=project.mml
MSS_SOURCES=$(shell grep .mss ${MML_SOURCE} | cut -d'"' -f2)

all: bench install


2u.mml: tools/cartocc.js project.mml local-config/2u.json ${MSS_SOURCES}
	node tools/cartocc.js project.mml local-config/2u.json > $@

2u.xml: 2u.mml
	carto $^ > $@

../prod/2u.xml: 2u.xml
	cp $^ $@

.PHONY : prod
install: ../prod/2u.xml
	sudo /etc/init.d/renderd restart

bench: 2u.xml
	cd benchs && ./benchs.sh ../2u.xml images