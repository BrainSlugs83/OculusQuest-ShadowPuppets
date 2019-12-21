@echo off
cd /d "%~dp0"
adb uninstall com.BrainSlugs83.ShadowPuppets 1>nul 2>&1
del *.apk 1>nul 2>&1