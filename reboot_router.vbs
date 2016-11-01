'======= script reboot router =========

set WshShell = CreateObject("WScript.Shell")

Return = WshShell.Run("ping 8.8.8.8 ", 0, true)

If Return=0 then 

Else
Set obj = CreateObject("WScript.Shell")
obj.run"cmd"
WScript.Sleep 250

obj.SendKeys"telnet 192.168.1.1" 
obj.SendKeys("{Enter}") 
WScript.Sleep 250

obj.SendKeys"admin" 'telnet username 
obj.SendKeys("{Enter}") 
WScript.Sleep 250 

obj.SendKeys"admin" 'telnet password 
obj.SendKeys("{Enter}") 
obj.SendKeys"reboot" 
obj.SendKeys("{Enter}") 
Wscript.Sleep 250

Dim oShell : Set oShell = CreateObject("WScript.Shell") 

' Kill telnet and cmd ' 
oShell.Run "taskkill /im telnet.exe", , True 
oShell.Run "taskkill /im cmd.exe", , True 
Wscript.Sleep 2000

End If

