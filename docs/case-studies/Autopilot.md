# Case Study: Windows Autopilot Rollout

**Context:** Healthcare long‑term care org; company‑owned Windows 10/11 devices; OneDrive for user files; user‑driven Autopilot. Required apps include the management agent, selected line‑of‑business apps, printers, and desktop links.

## Problem
Manual imaging caused inconsistency and long provisioning times. Baselines drifted and generated rework tickets.

## Goal
Standardize provisioning and reduce time‑to‑ready without desk‑side build steps.

## Approach
- **Profiles & Groups:** Created Autopilot profiles and dynamic device groups in Entra ID/Intune; standardized device naming and region/timezone.
- **Baseline Security:** BitLocker enforced, firewall on, Windows Update ring, local admin restricted; used Intune Policy Catalog with OMA‑URIs for gaps.
- **Applications:** Packaged and assigned required apps; added printer deployments and desktop links.
- **Rings & Pilot:** Staged rings (Pilot → Broad). Captured user feedback and success metrics.
- **Telemetry:** Tracked enrollment status, app install success, and compliance in Intune + Log Analytics.

## Results (targets to replace with real numbers)
- **Provisioning time:** ↓ to < 45 minutes per device.
- **Ticket volume:** ≥ 15% reduction in endpoint build/reimage tickets.
- **Baseline drift:** 100% of enrolled devices receive standard baselines within 1 hour.

## Lessons Learned
- Pre‑cache large apps for remote sites.
- Separate driver/firmware updates from baseline rings.
