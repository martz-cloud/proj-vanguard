# Case Study: Entra ID Migration to Cloud‑Only

**Starting point:** Hybrid AD; two cloud‑based DCs used for DNS; OneDrive for user storage. Autopilot rollout completed first.

## Objective
Eliminate on‑prem AD dependency for modern endpoints and simplify identity to Entra ID.

## Phased Plan
1. **Assessment:** Inventory hybrid dependencies (legacy shares, service accounts, line‑of‑business apps).
2. **Pilot (5–10 users):** Entra Join, validate SSO and app access; ensure device management via Intune.
3. **Policy Migration:** Convert required GPOs to Intune profiles/OMA‑URIs; document parity.
4. **Device Re‑Enrollment:** Schedule re‑enrollment to Entra Join; desk‑side support windows.
5. **Cutover:** Disable sync, validate sign‑ins and Conditional Access, monitor.

## Risk & Mitigation
- **Legacy dependency breaks access:** Dependency map, exceptions list, rollback group retained.
- **Conditional Access lockout:** Report‑only first, monitor sign‑ins, then enforce.
- **GPO parity gaps:** Pilot targeted profiles; custom OMA‑URIs for missing settings.
- **User disruption:** Comms plan, staggered waves, support coverage.

## Outcomes (targets)
- **Hybrid sync removed** for managed endpoints.
- **Improved SSO reliability** and device‑based CA.
- **Reduced complexity** and support overhead.
