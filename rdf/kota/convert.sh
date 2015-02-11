!/bin/bash 

mkdir rdf
for file in *
do
        output=`ls $file -1|cut -f1 -d"."`
	rapper -i turtle -o rdfxml -I http://opendatazis.com/kota/ $file > $output.rdf
done
mv *.rdf rdf
cd rdf

