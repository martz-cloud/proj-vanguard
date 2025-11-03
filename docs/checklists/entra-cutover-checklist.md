# Checklist: Entra ID Cutover

Use this to prep, execute, and validate a cloud-only Entra ID cutover.

## At a glance
- **Owner:** __________________
- **Cohort:** __________________
- **Change window:** __________________
- **Rollback cohort kept hybrid:** __________________

---

## Pre-checks (T-7 to T-1)
- [ ] Dependencies mapped and exceptions documented
- [ ] Pilot users selected and notified
- [ ] GPO to Intune parity validated on test devices
- [ ] Conditional Access in report-only with sign-ins reviewed
- [ ] Device filters and assignment scopes double-checked
- [ ] Re-enrollment schedule published and support coverage scheduled
- [ ] Rollback group identified and excluded from changes
- [ ] Comms sent: what changes, when, how to get help

## Cutover day (T0)
- [ ] Confirm help desk on standby and monitoring dashboards open
- [ ] Re-enroll devices to Entra Join where required
- [ ] Verify MDM enrollment and policy application in Intune
- [ ] Validate SSO to key apps for a sample of users
- [ ] Keep a running log of issues and resolutions

## Post-cutover validation (T+1 to T+7)
- [ ] Conditional Access moved from report-only to enforce for pilot scope
- [ ] Device compliance reaches target threshold for cohort
- [ ] No unexpected CA blocks in sign-in logs
- [ ] Secure Score trend checked and noted
- [ ] Ticket volume reviewed and compared to baseline
- [ ] Known issues list updated and shared

## Validation gates
- [ ] No unexpected CA blocks during report-only
- [ ] Pilot devices compliant and receiving policies
- [ ] Key apps accessible with Entra-only identity
- [ ] Rollback steps tested on a non-production device

## Rollback (if needed)
- [ ] Return affected users to the hybrid cohort
- [ ] Re-enable required hybrid settings for that cohort
- [ ] Restore previous policy assignments
- [ ] Notify stakeholders and schedule a revised cutover

## Evidence to capture
- [ ] Policy exports and assignment reports
- [ ] Compliance overview and non-compliant list
- [ ] Sign-in logs with CA evaluation
- [ ] Secure Score snapshots
- [ ] Cutover summary with metrics and lessons learned
