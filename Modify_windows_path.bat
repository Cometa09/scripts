'Modify the PATH (BAT)

set Var1=%PATH%
set Var2=C:\test_path;
set Var3=%Var2%%Var1%
 
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v Path /t REG_EXPAND_SZ /d "%Var3%" /f
