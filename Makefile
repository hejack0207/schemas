all: xsd/modelica.xsd xsd/xpath.xsd

xsd/cypher.xsd: antlr/Cypher.g4
	@echo generating cypher.xsd
	antlr2xsd $< document cypher $@

xsd/modelica.xsd: antlr/Modelica.g4
	antlr2xsd $< stored_definition modelica $@

xsd/xpath.xsd: antlr/xpath.g4
	antlr2xsd $< main xpath $@

##########################g4 files################################
antlr/xpath.g4:
	wget https://raw.githubusercontent.com/antlr/grammars-v4/master/xpath/xpath.g4 -P antlr

antlr/Cypher.g4:
	wget https://raw.githubusercontent.com/yoyoma214/Cypher-Antlr4-Grammer/master/Cypher.g4 -P antlr

