set /p myvariable="Enter something without spaces: "

@echo You entered: 
@echo %myvariable%

set /p myvariable="Enter something with spaces: "
@echo What you entered, between ####: 
@echo ####%myvariable%####



pause
