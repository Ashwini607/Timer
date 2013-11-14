# Input the following informations in a sequence after a executive command of bash file 

# Executive command will be like: ./timer.sh noOfTimeExecution SPARQLEndpointLink queryFileWithPathway queryResultFile timeCalculatingFile

# For Example: ./timer.sh 2 http://www.ebi.ac.uk/rdf/services/chembl/sparql /Users/ashwini/github/ChEMBL-RDF-Queries/federatedAndOthersEndpointQueries/actDiseaseChUp_1.rq 1.txt 2.txt 

# Result file is corresponding to $4 variable that store result of last time running query i.e. in every loop it start as a new file. If you are just interested in timing file then remove the $4 from bash file and change the $5 to $4 and then you will not put the name of result file in command

# If you are interested in keeping all results then put >> before $4 instead of >

# it will print number on terminal for updating the how many time query has executed.

echo "If error is coming in running query then first check the format in which you have to keep the command to execute the query." 
echo "I mean apart from executive bash file name, you have to mention somethings else for input of bash file."
echo "I have mentioned it in comment and in "README.md" file of timer github repository  "



   for((i=0; i< $1; i++))
   do
    START=$(date +%s)
  
    # start your script work here
 
    ./rsparqlmem --service=$2 --query=$3 > $4

    # your logic ends here
    END=$(date +%s)
    DIFF=$(( $END - $START )) 
 
    echo "$DIFF" >> $5
    echo " $i times "
  
   done

  

  
