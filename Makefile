MML_SOURCE=project.mml.in
MSS_SOURCES=$(shell grep .mss ${MML_SOURCE} | cut -d'"' -f2)

all: bench install

project.mml: project.mml.in
	./remove-end-slashes.sh < $^ > $@


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

clean: 
	rm 2u.xml 2u.mml project.mml

flush_europe_8:
        render_list -a -f -n 4 -m 2u -s /var/run/renderd/renderd.sock -z 8 -Z 8 -x 124 -X 137 -y 81 -Y 92

flush_europe_9:
        render_list -a -f -n 4 -m 2u -s /var/run/renderd/renderd.sock -z 9 -Z 9 -x 249 -X 273 -y 165 -Y 184

flush_europe_10:
        render_list -a -f -n 4 -m 2u -s /var/run/renderd/renderd.sock -z 10 -Z 10 -x 499 -X 551 -y 327 -Y 369

	
	
