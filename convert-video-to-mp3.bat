@echo off

echo.
echo  Convert Video To Mp3
echo.
echo  Michael Cook
echo  https://github.com/entozoon/convert-video-to-mp3
echo.

REM Drag file into bat, or grab it from direct input (would be %1 but strip the quotes:)
set file=%~nx1
if "%file%" == "" (
	echo.
	echo  Note: You can drag and drop a file on to this bat instead!
	echo.
	set /p file=Filename:
)

ffmpeg -i "%file%" -vn -acodec libmp3lame -ac 2 -qscale:a 4 -ar 48000 "%file%.mp3"

echo.
echo.
echo  Sick, all done!
echo.
echo  %file%.mp3
echo.
echo.
pause
