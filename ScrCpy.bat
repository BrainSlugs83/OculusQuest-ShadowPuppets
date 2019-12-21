@echo off
:: !!IMPORTANT!! WHEN CONFIGURING THE BELOW VALUES DO NOT PUT SPACES ON EITHER SIDE OF THE EQUAL SIGN!!
setlocal enableDelayedExpansion
cd /d "%~dp0"
pushd ScrCpy

:: LEFT EYE=0, RIGHT EYE=1
SET EYE=1

:: FOV PERCENTAGE (100 = 100%, i.e. full field of view, H=Horizontal, V=Vertical)
:: !!IMPORTANT!! DO NOT INCLUDE THE PERCENT SIGN!
SET FOVPERCH=70
SET FOVPERCV=70

:: ========== DON'T MODIFY ANYTHING BELOW THIS UNLESS YOU KNOW WHAT YOU'RE DOING. ==========
SET HRES=1440
SET VRES=1600

SET /A "Width=(HRES * FOVPERCH) / 100"
SET /A "Height=(VRES * FOVPERCV) / 100"
SET /A "XO=(HRES*EYE)+((HRES-Width)/2)"
SET /A "YO=(VRES-Height)/2"

:START
echo %WIDTH%x%HEIGHT%

scrcpy-noconsole -m 720 -b 4M -n -T -c %WIDTH%:%HEIGHT%:%XO%:%YO%

:: IF THEY PRESS ALT+F4, IT WILL BE ERRORLEVEL 0, AND THE APP CAN EXIT, OTHERWISE
:: IT WILL KEEP TRYING FOREVER, OR UNTIL CTRL+C
if ERRORLEVEL 1 (
	:: ping ourselves to "sleep" for a few seconds
	ping localhost > nul 2>&1
	GOTO START
)

popd