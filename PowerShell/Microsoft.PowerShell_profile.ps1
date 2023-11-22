# C:\Users\<username>\Documents\PowerShell\Microsoft.PowerShell_profile.ps1

New-Alias pn pnpm
New-Alias ku kubectl

Invoke-Expression (&starship init powershell)

(& volta completions powershell) | Out-String | Invoke-Expression
