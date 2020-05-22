# Coleta informações do computador para envio a Multitask para análise de problemas
# Escrito por: Francisco Kraetzer
# Data: 21/05/2020

$fileout = $env:USERPROFILE + "\Desktop\MT-SysInfo - " + $env:COMPUTERNAME + ".txt"

if($fileout){
    Remove-Item -Path $fileout -Force
}

Add-Content -Path $fileout "Informacoes do sistema`n`n-----------------------------------`n-----------------------------------`n`n ########################## SYSTEM INFORMATION ##########################"

Get-ComputerInfo | Out-File -FilePath $fileout -Append -Encoding default

Add-Content -Path $fileout "`n`n ########################## POLICIES ##########################"

gpresult /z | Out-File -FilePath $fileout -Append -Encoding default

Add-Content -Path $fileout "`n`n ########################## IPCONFIG ##########################"

ipconfig /all | Out-File -FilePath $fileout -Append -Encoding default

Add-Content -Path $fileout "`n`n ########################## DISCOS/VOLUMES ##########################"

Get-Volume | Out-File -FilePath $fileout -Append -Encoding default

Add-Content -Path $fileout "`n`n ########################## EVENTOS 30 DIAS ##########################"
Add-Content -Path $fileout " ########################## SYSTEM ##########################"

$UltimoMes = (Get-Date).AddDays(-30)
Get-EventLog -LogName System -After $UltimoMes | Where-Object {($_.EntryType -eq "Warning") -or ($_.EntryType -eq "Error")} | Out-File -FilePath $fileout -Append -Encoding default

Add-Content -Path $fileout "`n`n ########################## APPLICATION ##########################" 
Get-EventLog -LogName Application -After $UltimoMes | Where-Object {($_.EntryType -eq "Warning") -or ($_.EntryType -eq "Error")} | Out-File -FilePath $fileout -Append -Encoding default

