# Academic Degree Ontology

This is early work to create an academic degree ontology in accord with the
 [OBO Principles](http://www.obofoundry.org/principles/fp-000-summary.html)

See [Early Thoughts on Representing Academic Degrees in VIVO](http://bit.ly/2Jo4ws9) for background, 
rationale, and figures.  The short version is that VIVO currently represents degrees as named individuals,
so that the degree you got and the degree I got are the same individual.  This will be changed so that the degree you got
and the degree I got are individuals of the same class.

## Working with ADO

1. Degrees are added to ado-data.tsv
1. Terms from other ontologies are added via imports
1. "core" terms are added to ado-edit.ttl
1. The makefile combines the terms from other ontologies, the degrees, and the "core" to
make ado.ttl which is then validated using `robot report`

## TODO

1. Add more degrees.  Each time degree(s) are added, run make to build `ado.ttl`
1. Abbreviation semantics should be corrected -- the IAO property being used is not correct.  We need
a simple datatype property to assert that a string is an abbreviation of the class label.
1. Correct the compliance report.  It appears to be requiring a definition and an elucidation.  This is incorrect.
1. Confirm that inference works as expected.  Inference for ADO is simple heirarchical inference -- given
a degree we can infer the super classes.  So, for example, A bachelor of arts degree is a bachelor degree.
1. Work out deontic semantics.  The conferring of a degree is a deontic act with two outputs: 
a role (degree recipient) and a document (the degree document).  The degree recipient role
is associated with rights, privileges and obligations.
1. Provide working examples to represent what VIVO an currently represent -- a degree is
conferred by an organization to an individual on a date with a type and a topic.
1. Other tests include creation of NamedIndividuals from the classes.
1. Discuss with VIVO Ontology Interest Group
1. Discuss with OBO community
1. Write a [MIRO report](https://doi.org/10.1186/s13326-017-0172-7) on ADO
