# Runbook: Entra ID Cutover (Cloud Only)

Goal: move modern endpoints to cloud-only identity with minimal disruption.

## Roles
- Lead engineer: owns plan and change window
- Entra ID admin: Conditional Access and identity configuration
- Intune admin: policy parity and device management

## Prerequisites
- Autopilot is in production
- Dependency map with exceptions documented
- GPO to Intune parity plan defined
- Conditional Access staged in report-only
- Pilot cohort selected and informed

## Steps

### A) Readiness
1. Convert required GPOs to Intune configuration profiles or OMA-URIs.
2. Validate policies on test devices that are Entra joined only.
3. Set Conditional Access to report-only and review sign-in logs.

### B) Pilot move
1. Re-enroll pilot devices to Entra Join if needed. Use Autopilot for clean state when possible.
2. Confirm device management and compliance in Intune.
3. Validate SSO to key applications and resource access.

### C) Enforce Conditional Access for pilot
1. Move from report-only to enforce for the pilot scope.
2. Monitor sign-ins and remediate quickly.

### D) Retire hybrid for pilot
1. Stop relying on hybrid join for the pilot cohort.
2. Validate user authentication and device trust paths.
3. Monitor tickets, sign-ins, compliance, and Secure Score.

### E) Expand to waves
1. Roll out additional cohorts in phases.
2. Communicate schedules, known issues, and support coverage.
3. Decommission hybrid dependencies according to the exceptions plan.

## Validation gates
- [ ] No unexpected Conditional Access blocks during report-only
- [ ] Pilot devices compliant and receiving policies
- [ ] Key apps accessible with Entra-only identity

## Rollback
- Return affected users to the hybrid cohort
- Re-enable required sync or hybrid settings for that cohort
- Restore previous assignments and notify stakeholders

## Metrics to capture
| Metric | Target |
|---|---|
| Sign-in success rate | ≥ 99% in pilot |
| Time to compliant after re-enroll | < 60 minutes |
| Identity-related tickets | Down vs baseline |

## Troubleshooting
- Conditional Access denies: inspect sign-in logs and policy evaluation details
- App access issues: confirm app configuration supports Entra-only devices
- Policy delivery issues: verify MDM enrollment state and group assignments
