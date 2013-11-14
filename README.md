# Use of the timer bash file

To do time analysis of SPARQL query on respective SPARQL endpoint service of RDF triple store.
Some short of analysis are present in Analysis repository (https://github.com/Ashwini607/Analysis)

# How does the timer bash file work?

It uses the Jena library function to execute the SPAQRL query. The uses the "rsparql" execution file but I have modified this file to make more space for running larger result query and is available in "rsparlmem" file.
So you would have to keep this file inside the bin folder of Apache-Jena directory.

# How to run the timer bash file?

It takes user input for number of times query will run, name of SPARQL endpoint service, query file name with path, result storing file, and time saving file respectively,
for example,  Example: ./timer.sh 2 http://www.ebi.ac.uk/rdf/services/chembl/sparql /Users/ashwini/github/ChEMBL-RDF-Queries/federatedAndOthersEndpointQueries/actDiseaseChUp_1.rq 1.txt 2.txt
Here running "actDiseaseChUp_1.rq" query file 2 times on ChEMBL SPARQL endpoint. Result and timing are getting save in 1.txt and 2.txt respectively.

