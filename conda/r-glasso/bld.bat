echo exportPattern( "." ) > NAMESPACE

"%R%" CMD INSTALL --build .
if errorlevel 1 exit 1