@echo off
echo git adding...
git add -A
echo git committing...
git commit -m "upd-%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%"
echo git pushing...
git push
echo "<Done."
pause