<# 
.SYNOPSIS
  Import Windows Autopilot devices from CSV using Microsoft Graph (placeholder wiring).
.DESCRIPTION
  CSV required headers: SerialNumber, Manufacturer, Model, GroupTag, AssignedUser (UPN optional)
  Replace TODOs with Graph authentication and POST calls to the Autopilot API.
#>

param(
  [Parameter(Mandatory = $true)][string]$CsvPath
)

if (-not (Test-Path $CsvPath)) { throw "CSV not found: $CsvPath" }
$rows = Import-Csv -Path $CsvPath
Write-Host ("Importing {0} devices (placeholder)" -f $rows.Count)

# TODO: Connect-MgGraph -Scopes "Device.ReadWrite.All","DeviceManagementServiceConfig.ReadWrite.All"
# TODO: For each row, build request body and call API.
$rows | Select-Object SerialNumber, Manufacturer, Model, GroupTag | Format-Table -AutoSize
