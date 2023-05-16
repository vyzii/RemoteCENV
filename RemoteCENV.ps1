### Script to remotely manage machine environment variables on thick clients
### Developed by Hunter Harkness

$RemoteMachine = Read-Host "Input Machine Name"
$SysVariableName = Read-Host "Input System Variable Name"
$SysVariableValue = Read-Host "Input System Variable Value"

Invoke-Command -ComputerName $RemoteMachine -ScriptBlock {[System.Environment]::SetEnvironmentVariable("$Using:SysVariableName", "$Using:SysVariableValue", "Machine")}
Write-Host "Complete! Variable $SysVariableName on $RemoteMachine is:"
Invoke-Command -ComputerName $RemoteMachine -ScriptBlock {[System.Environment]::GetEnvironmentVariable("$Using:SysVariableName", "Machine")}
Read-Host -Prompt "Press Enter to exit"
