@echo off
set a=0
set b=0
set c=0
setlocal EnableDelayedExpansion
for %%n in (*.PNG) do (

set /A b=!a!/9+1
set /A c=!a!-9*!b!+10
set /A a+=1
set /A d=!b!+1
ren "%%n" "!d!.!c!.png"
)

pause