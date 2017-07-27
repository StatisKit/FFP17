#!/bin/bash

# echo 'exportPattern( "." )' > NAMESPACE
mv DESCRIPTION DESCRIPTION.old
grep -v '^Priority: ' DESCRIPTION.old > DESCRIPTION

$R CMD INSTALL --build .
