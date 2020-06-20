# Imported Terms

This folder contains copies of ontologies used as sources for terminology imports. 

For each ontology, there is a terms.txt file containing the terms to be imported.

Edit the terms.txt files to add or remove terms as needed.

The make process does intelligent extracction of terms from the ontologies using robot
method BOT.  This extracts the term, plus terms needed by the extracted term.  The
extracted terms are stored in import.txt files, one for each ontology.
