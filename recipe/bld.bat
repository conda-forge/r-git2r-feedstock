sed -ie 's/-lgcrypt -lgpg-error//' src/Makevars.ucrt
sed -ie 's/-lpcre//' src/Makevars.ucrt
"%R%" CMD INSTALL --build . %R_ARGS%
IF %ERRORLEVEL% NEQ 0 exit /B 1
