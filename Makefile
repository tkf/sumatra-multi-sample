all: project-a-smt-run project-b-smt-run

project-a-smt-run:
	make --directory project-a SMT_PROJECT=ProjectA \
		smt-run

project-b-smt-run:
	make --directory project-b SMT_PROJECT=ProjectB \
		SMT_INIT_OPTS=--store=../project-a/.smt/records \
		smt-run

smtweb:
	cd project-a && smtweb
