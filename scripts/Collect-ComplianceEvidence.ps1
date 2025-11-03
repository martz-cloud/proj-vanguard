<# 
.SYNOPSIS
  Collect compliance evidence (assignment exports, summaries). Placeholder for Graph calls.
#>
$timestamp = Get-Date -Format "yyyyMMdd-HHmm"
$out = Join-Path $PSScriptRoot ("Evidence-" + $timestamp)
New-Item -ItemType Directory -Force -Path $out | Out-Null

# TODO: Export Intune device compliance, policy assignments, CA policies.
"See TODOs in script to wire Graph exports." | Out-File (Join-Path $out "READFIRST.txt")

Write-Host "Evidence folder: $out"
