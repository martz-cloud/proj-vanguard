<# 
.SYNOPSIS
  Device assignment/compliance report (placeholder).
#>
$timestamp = Get-Date -Format "yyyyMMdd-HHmm"
$outFile = Join-Path $PSScriptRoot ("DeviceAssignments-" + $timestamp + ".csv")
"DeviceId,User,Compliance" | Out-File $outFile
Write-Host "Report written: $outFile"
