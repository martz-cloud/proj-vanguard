# Case Study: HIPAA & NIST Baseline Compliance

## Objective
Enforce repeatable endpoint baselines aligned to HIPAA technical safeguards and mapped to NIST controls.

## Scope
- Encryption (BitLocker), local admin control, firewall, Defender for Endpoint, Windows Update.
- Device filters for sensitive roles; Compliance policies enforced via Conditional Access gates.

## Implementation
- **Baseline Set:** Intune baselines + Policy Catalog + custom OMA‑URIs.
- **Evidence:** Compliance reports, baseline/profile exports, Secure Score snapshots.
- **Automation:** PowerShell scripts collect evidence and assignment exports.

## Metrics (targets)
- **Secure Score:** measurable uplift post‑baseline.
- **Compliance rate:** % devices compliant ≥ defined threshold.
- **Time to baseline:** median time from enrollment to compliant state.

## Notes
Balance hardening with usability; pilot risky changes; document exceptions.
