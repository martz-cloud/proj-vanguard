# Runbook: Entra ID Cutover

## Prereqs
- Autopilot in production.
- Dependency map documented; parity plan for critical GPOs.

## Steps
1. **Pilot selection** and communication.
2. **Profile parity** (GPO → Intune Catalog/OMA‑URI).
3. **Conditional Access** in report‑only; verify logs.
4. **Re‑enroll devices** to Entra Join; verify SSO and app access.
5. **Disable sync** for pilot cohort, then broad rollout.
6. **Monitor** sign‑ins, compliance, and tickets.
