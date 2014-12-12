reg Query "HKLM\Hardware\Description\System\CentralProcessor\0" | find /i "x86" > NUL && set OS=32BIT || set OS=64BIT
IF %OS%==64BIT (msiexec /i test.msi /l*v MSILOG-Install-64bit.log TRANSFORMS=test_64.Mst
    if errorlevel 1 goto MSIERROR
	goto EXIT
	) ELSE (msiexec /i test.ms /l*v MSILOG-Install-32bit.log TRANSFORMS=test_32.Mst
    if errorlevel 1 goto MSIERROR
goto EXIT)

:ERROR
@echo ****************************
@echo***Error
