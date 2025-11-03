# Runbook: Windows Autopilot

## Prereqs
- Intune MDM authority set; Entra ID Premium; device import permissions.
- CSV with at minimum: SerialNumber, Manufacturer, Model, GroupTag.

## Steps
1. **Create dynamic groups** (Autopilot‑Pilot, Autopilot‑Broad).
2. **Define profiles** (User‑driven, region/timezone, naming).
3. **Import devices** using `scripts/Autopilot-DeviceImport.ps1`.
4. **Assign baselines** (BitLocker, Firewall, Update rings, local admin policy).
5. **Package apps** (management agent, LOB apps, printer deploy, desktop links).
6. **Pilot enrollment** with 5–10 users; capture metrics.
7. **Iterate & expand** to Broad ring.
