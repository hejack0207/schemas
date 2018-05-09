all: xsd/Cypher.xsd

xsd/Cypher.xsd: antlr/Cypher.g4
	@echo generating cypher.xsd
	antlr2xsd $< document cypher $@

antlr/Cypher.g4:
	wget https://raw.githubusercontent.com/yoyoma214/Cypher-Antlr4-Grammer/master/Cypher.g4 -P antlr
