@echo off
:main
echo GIT STATUS:
git status
echo ��Ҫadd��commit���и�����
choice /C YNC /M "ȷ���밴 Y�����밴 N��ȡ���� C��"
if errorlevel 3 goto cancel
if errorlevel 2 goto no
if errorlevel 1 goto yes

:yes
echo ����ִ�������
call ScriptA.bat
echo ִ����ϣ��ټ���
goto end

:no
echo ��ȡ���������ټ���
goto end

:cancel
echo ��ȡ����������������ָ���⡣
pause
goto main

:end
pause