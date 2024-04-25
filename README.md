# disablewinwebsearch
A powershell script to automatically disable web results in windows search

### Disclaimer
This script modifies the windows registry. I do NOT take responsibility for what may happen to your system. Run this script at your own risk.

### How to use
* In order to function properly, you need to run powershell as admin.
* Note that you have to enable powershell script execution (type Set-ExecutionPolicy Unrestricted -Force in powershell console).
* Go to the directoy where you extracted the script (e.g. cd c:\Users\PC\Downloads)
* Run the script with .\disablewinwebsearch.ps1

### How it works
This script simply creates a new registry entry called ```DisableSearchBoxSuggestions``` located at ```HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer```.
