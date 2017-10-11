FOR /f %%i in (host.txt) do (
echo ----------------------------- %%i ----------------------------
xcopy /E /C /Z \\alex-nb\c$\distr\ddb \\%%i\TEST-DISTR
echo ----------------------------------------------------------------------
)
echo.
1>>report1.txt 2>&1
pause
