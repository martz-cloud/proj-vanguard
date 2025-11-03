# Runbook: Compliance Baselines

Goal: enforce consistent, auditable endpoint baselines that align to HIPAA and map cleanly to NIST.

## Roles
- Lead engineer: owns plan and exceptions process
- Intune admin: profiles, assignments, compliance policies
- Security engineer: Defender for Endpoint (MDE), Conditional Access (CA), evidence

## Prerequisites
- Licensing assigned (Intune, Entra ID P1/P2 as required, MDE if used)
- Intune **Security Baseline** and/or **Policy Catalog** ready
- Custom **OMA-URI** definitions for any gaps
- **Defender for Endpoint** onboarding package available (if in scope)
- Device **filters** defined (e.g., role, OS, build ring)
- **Compliance policies** defined (encryption, OS version, tamper protection, etc.)
- **Conditional Access** policies prepared and staged in **report-only**
- **Windows Update for Business** rings defined
- **Local admin** control strategy (e.g., LAPS or restricted groups)

## Inputs
| Item | Example |
|---|---|
| Control mapping matrix | `docs/reference/hipaa-nist-matrix.md` |
| Device filters | `role == "clinical"`, `os == "Windows 11"` |
| Scope tags | `prod`, `pilot`, `sensitive` |

## Steps

### A) Plan the baseline set
1. Start from the Intune Security Baseline for Windows.
2. Add Policy Catalog items for missing controls (firewall, BitLocker settings, audit).
3. Define custom OMA-URIs where needed (e.g., advanced Defender settings).

### B) Build and scope policies
1. Create/confirm: Disk Encryption, Firewall, Update Rings, Account/Local Admin policy, MDE onboarding.
2. Apply **device filters** to segment stricter settings (e.g., sensitive roles).
3. Use **scope tags** for admin separation if needed.

### C) Compliance policies and CA (report-only)
1. Create compliance policies (encryption required, firewall on, OS minimums).
2. Stage CA policies in **report-only** that require a **compliant device**.
3. Review sign-in logs and policy evaluations—no enforcement yet.

### D) Pilot
1. Assign baselines and compliance policies to **Pilot** group.
2. Onboard pilot devices to **MDE** (if in scope).
3. Monitor: device compliance, Secure Score components, MDE health.

### E) Evidence capture (pilot)
Export and store under `docs/evidence/<YYYY-MM>/` (or a central evidence folder):
- Intune policy exports and assignment reports
- Compliance summary and non-compliant device list
- CA policy (report-only) results
- MDE onboarding status (if applicable)
- Secure Score snapshots (device/identity)

### F) Enforce and expand
1. Move CA policies from **report-only → enforce** for pilot scope once clean.
2. Roll assignments to **Broad** cohort in waves.
3. Track metrics and exceptions; iterate on profiles where needed.

## Validation gates
- [ ] ≥ 95% of pilot devices reach **Compliant** within 60 minutes of enrollment
- [ ] No unexpected CA blocks during report-only phase
- [ ] BitLocker recovery keys escrowed and verifiable
- [ ] MDE onboarding success ≥ 98% (if in scope)

## Rollback
- Remove or exclude affected devices via **device filters**
- Revert CA policies to **report-only** for impacted cohort
- Unassign the problematic baseline/policy and re-apply previous version
- If required, offboard MDE (only for affected devices) and restore prior state

## Metrics to capture
| Metric | Target |
|---|---|
| Compliance rate | ≥ 95% pilot, ≥ 98% broad |
| Time to compliant | < 60 minutes |
| Secure Score uplift | Positive trend after enforcement |
| Drift incidents (per month) | Trending down |
| Exceptions count & aging | Under defined thresholds |

## Troubleshooting
- **Device never reaches compliant**: check filter logic, assignment scope, policy conflicts, ESP blocking app installs.
- **BitLocker escrow missing**: confirm policy order, key protector type, and key escrow setting in Intune.
- **CA denies access**: review sign-in logs and policy evaluation; confirm device is MDM enrolled and compliant claim present.
- **MDE not reporting**: validate onboarding package, sensor service state, and network egress.
- **Update ring conflicts**: ensure only one ring targets a device; stagger deadlines for pilot vs broad.

## Notes
- Keep the control mapping updated (`docs/reference/hipaa-nist-matrix.md`) as policies change.
- Use **device filters** over static groups to avoid scope creep.
- Document every exception with owner, justification, and review date.
