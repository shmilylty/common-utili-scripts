@echo off
for %%i in (D:\test) do (
   if exist %%i\ (
      for /f "delims=" %%a in ('dir /ad /b /s "%%i\"^|sort /r') do (
         rd "%%a"
      )
   )
)
pause