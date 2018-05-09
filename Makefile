all: xsd/modelica.xsd xsd/cypher.xsd

xsd/cypher.xsd: antlr/Cypher.g4
	@echo generating cypher.xsd
	antlr2xsd $< document cypher $@

antlr/Cypher.g4:
	wget https://raw.githubusercontent.com/yoyoma214/Cypher-Antlr4-Grammer/master/Cypher.g4 -P antlr

xsd/modelica.xsd: antlr/Modelica.g4
	antlr2xsd $< stored_definition modelica $@
