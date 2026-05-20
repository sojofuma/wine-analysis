@echo off
rem ----------------------------------------------------------------------------
rem    PATH
rem ----------------------------------------------------------------------------
rem set HOME=C:\usr\home
set PYPATH=c:\usr\python3.13;c:\usr\python3.13\Scripts
set PATH=%PYPATH%;%PATH%
rem ----------------------------------------------------------------------------
rem    ALIASES
rem ----------------------------------------------------------------------------
doskey lan = echo "=== proxy on ==="$T^
  set http_proxy=http://wwwproxy.cc.sojo-u.ac.jp:3128$T^
  set https_proxy=http://wwwproxy.cc.sojo-u.ac.jp:3128$T^
  set ftp_proxy=ftp://ftpproxy.cc.sojo-u.ac.jp:8021
doskey wan = echo "=== proxy off ==="$T^
  set http_proxy=$Tset https_proxy=$Tset ftp_proxy=
doskey spip = pip --proxy=http://wwwproxy.cc.sojo-u.ac.jp:3128 $*
rem ----------------------------------------------------------------------------
rem    COMMAND
rem ----------------------------------------------------------------------------
call %windir%\system32\cmd.exe
exit
