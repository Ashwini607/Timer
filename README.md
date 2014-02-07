# Use of the timer bash file

To do a SPARQL query execution time analysis on the SPARQL endpoint service of a RDF triple store.
I have done some analysis and are present in the [Analysis](https://github.com/Ashwini607/Analysis) repository.

# How does the timer bash file work?

It uses the Jena library to execute the SPAQRL query. You can download the Apache-Jena java package from http://jena.apache.org/download/index.html.
Our executable file is inside the bin folder.

The executable file is "rsparql". But I have modified it to make more space for running a query having larger number of the results, otherwise such query does not execute. 

The modified file has saved with the name "rsparlmem".

For space modification in the file, you would have to go to the following location in rsparql file present inside the bin folder of the Apache-Jena directory:

 ---- Setup
JVM_ARGS=${JVM_ARGS:--Xmx4096M}

Here, given space is 4096M that you can change as per space requirement for your query. If the mentioned space will be more then it is okay. Otherwise, an error will produce that you can handle by increasing the space. Makesure your computer have required space.

# How to run the timer bash file?

With a executable file command you would have to the following information:
number of times a query will run, name of the SPARQL endpoint service, name of a query file with path, a file name to store the results, and a file name to save the calculated timing respectively.

For example: ./timer.sh 2 http://www.ebi.ac.uk/rdf/services/chembl/sparql /Users/ashwini/github/ChEMBL-RDF-Queries/federatedAndOthersEndpointQueries/actDiseaseChUp_1.rq 1.txt 2.txt

Query file is "actDiseaseChUp_1.rq". running 2 times on ChEMBL SPARQL endpoint. The results and the calculated timing are getting saved in the file 1.txt and 2.txt respectively.

The user inputs along with the execution file command, go to the $1, $2, $3, $4, and $5 variable. The variable names are in order. $1 is for the input name just after the executable file name and then $2, $3, $4,$5 respectively. The result file save the results that comes from last the time executuion of your query but not for all time, because saving the same results more than one time does not make sense. If you do not want the  result file, remove the variable name from the bash file and then you would not have to put that information in the command line.
