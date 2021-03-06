:: Template Elevated Command
:: http://ss64.com/vb/syntax-elevate.html

@Echo off

Set DIR={{ dir }}
Set INPUT={{ input }}
Set OUTPUT={{ output }}
Set PIPE={{ pipe }}

:: Hide the window
IF [%1]==[] (
   wscript.exe {{ invisible }} "cmd /C %~f0 run"
) else (
   
   cd %DIR%

   %PIPE% read client %INPUT% | ({{ command }}) {{ stderr_redir }} | %PIPE% write client %OUTPUT% 
   
)
