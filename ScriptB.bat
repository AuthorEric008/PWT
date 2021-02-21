@echo off
:main
echo GIT STATUS:
git status
echo 你要add并commit所有更改吗？
choice /C YNC /M "确认请按 Y，否请按 N，取消按 C。"
if errorlevel 3 goto cancel
if errorlevel 2 goto no
if errorlevel 1 goto yes

:yes
echo 正在执行命令……
call ScriptA.bat
echo 执行完毕，再见。
goto end

:no
echo 已取消动作，再见。
goto end

:cancel
echo 已取消动作，按任意键恢复检测。
pause
goto main

:end
pause