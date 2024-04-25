Clear-Host
Write-Host 'This script will add a registry entry to disable the web results on windows search. Your system will reboot immediately.'
Write-Host 'DISCLAIMER: This script modifies the windows registry. I do NOT take responsibility for what may happen to your system. 
Run this script at your own risk. Press "y" to run the script.'

$continue = Read-Host

if ($continue -eq "y") {
     <# create registry entry and reboot #>
    New-Item 'HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer' -Force | New-ItemProperty -Name DisableSearchBoxSuggestions -Value 1 -Force | Out-Null
    Restart-Computer
}
else {
     <# exit program #>
    Clear-Host
    Write-Host 'Operation canceled.'
}



