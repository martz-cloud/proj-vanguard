# Checklist: Pilot Readiness

Use this checklist to confirm you are ready to start the pilot and to keep execution tight.

## At a glance
- Owner: __________________
- Pilot cohort (users/devices): __________________
- Start date and window: __________________
- Success criteria acknowledged by stakeholders: Yes / No

---

## Scope and success criteria
- [ ] Pilot scope defined (apps, devices, locations)
- [ ] Success metrics defined and documented
  - [ ] Median time to compliant target
  - [ ] Ticket reduction target vs baseline
  - [ ] App install success target
- [ ] Exit criteria defined (what must be true to expand)

## Pre-flight checks
- [ ] Test devices reset or factory new
- [ ] Network prerequisites OK (proxy, ports, TLS, content delivery)
- [ ] Required licenses assigned to pilot users
- [ ] Admin access verified for operators

## Technical readiness
- [ ] Dynamic groups created (Pilot, Broad)
- [ ] Autopilot profile configured and assigned to Pilot
- [ ] Baselines ready and scoped to Pilot
  - [ ] BitLocker
  - [ ] Firewall
  - [ ] Windows Update for Business
  - [ ] Local admin restrictions or LAPS
- [ ] Compliance policies created and targeted to Pilot
- [ ] Required apps packaged and assignments set to Pilot
- [ ] Conditional Access policies in report-only and reviewed
- [ ] Device filters validated to avoid overlap and conflicts

## Communication and support
- [ ] User comms drafted and sent (what, when, what to expect, how to get help)
- [ ] Support coverage scheduled for pilot window
- [ ] Feedback channel defined (Teams channel or ticket tag)

## Rollback readiness
- [ ] Rollback cohort defined and excluded from pilot
- [ ] Rollback steps documented and tested on a non-production device
- [ ] Change log template prepared

## Go / No-go
- [ ] All pre-flight items complete
- [ ] Stakeholders approve pilot start
- [ ] Monitoring dashboards ready (Intune enrollment, compliance, app installs)

---

## Pilot execution
- [ ] Import or verify device inventory for pilot
- [ ] Enroll devices and monitor ESP progress
- [ ] Confirm baseline policies apply without conflict
- [ ] Confirm required apps install and launch correctly
- [ ] Capture provisioning start and compliant timestamps

## Validation gates
- [ ] 90% of pilot devices reach compliant within 60 minutes
- [ ] No critical app failures reported
- [ ] No unexpected Conditional Access blocks in sign-in logs

## Exit and expansion
- [ ] Pilot summary documented with metrics and issues
- [ ] Known issues list updated with owner and timeline
- [ ] Approve move to Broad if success criteria met

## Evidence to capture
- [ ] Device compliance report and non-compliant list
- [ ] Policy and assignment exports
- [ ] App install success report
- [ ] Sign-in logs for pilot users
- [ ] Time to compliant per device
- [ ] Pilot retrospective notes and next steps
