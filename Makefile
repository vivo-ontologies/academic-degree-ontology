# Simple Makefile?
all:
	robot extract --method BOT --input imports/bfo.owl --term-file imports/bfo_terms.txt \
	    convert --output imports/bfo_import.ttl
	robot extract --method BOT --input imports/iao.owl --term-file imports/iao_terms.txt \
	    convert --output imports/iao_import.ttl
	robot template \
  	    --template ado-data.tsv \
  	    --prefix "ADO: http://purl.obolibrary.org/obo/ADO_" \
  	    convert --output temp.ttl
	grep -v ^# temp.ttl >ado-data.ttl
#	rm temp.ttl
	robot merge \
	    --prefix "ado: https://something/ontology/ado/ADO_" \
	    --input ado-edit.ttl \
	    --input imports/bfo_import.ttl \
	    --input imports/iao_import.ttl \
	    --input ado-data.ttl \
	    convert --output ado.ttl
#	rm ado-data.ttl
	robot report --input ado.ttl --output ado-report.tsv

