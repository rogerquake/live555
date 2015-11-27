@echo off

title clean_live

:: Change this to the correct location.
call "C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\vcvarsall.bat" x86

:::::::::::::::::::::::::::::::::::::

cd BasicUsageEnvironment
del *.obj *.lib

cd ..\groupsock
del *.obj *.lib

cd ..\liveMedia
del *.obj *.lib

cd ..\UsageEnvironment
del *.obj *.lib

cd ..\mediaServer
del *.obj *.lib

cd ..\testProgs
del *.obj *.lib

:::::::::::::::::::::::::::::::::::::
