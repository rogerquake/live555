@echo off

title build_live

:: Change this to the correct location.
call "C:\Program Files (x86)\Microsoft Visual Studio 10.0\VC\vcvarsall.bat" x86

:::::::::::::::::::::::::::::::::::::

call genWindowsMakefiles

cd BasicUsageEnvironment
del *.obj *.lib
nmake /B -f BasicUsageEnvironment.mak

cd ..\groupsock
del *.obj *.lib
nmake /B -f groupsock.mak

cd ..\liveMedia
del *.obj *.lib
nmake /B -f liveMedia.mak

cd ..\UsageEnvironment
del *.obj *.lib
nmake /B -f UsageEnvironment.mak

cd ..\mediaServer
del *.obj *.lib
nmake /B -f mediaServer.mak

cd ..\testProgs
del *.obj *.lib
nmake /B -f testProgs.mak

:::::::::::::::::::::::::::::::::::::
