$ErrorActionPreference = "SilentlyContinue";
$env:ANDROID_SERIAL = $null;

[void](adb kill-server);
[void](adb devices);
$ErrorActionPreference = "Stop";

$ip = (adb shell ip route);
$match = ($ip | select-string -pattern "src (\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})");
$ip = $match.Matches[0].Groups[1].Value;

adb tcpip 5555
iex "adb connect $($ip):5555"

Set-Content -Path "$($PSScriptRoot)\set-serial.bat" -Value "@echo off`r`nSET ANDROID_SERIAL=$($ip)";
Set-Content -Path "$($PSScriptRoot)\adb-reconnect.bat" -Value "@echo off`r`nadb kill-server`r`nadb connect $($ip):5555";
