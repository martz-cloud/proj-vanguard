# Runbook: Windows Autopilot Enrollment

Goal: standardize provisioning and reach a compliant state quickly.

## Roles
- Lead engineer: owns plan and escalations
- Intune admin: profiles, assignments, compliance
- Service desk: staging and pilot assistance

## Prerequisites
- Intune MDM authority configured
- Licenses assigned as needed
- Dynamic device groups: Pilot and Broad
- Autopilot profile (user-driven, naming, region, time zone)
- Baselines ready: BitLocker, Firewall, Update rings, local admin restrictions or LAPS
- Compliance policies defined
- Required apps packaged and available in Intune
- CSV with at least: `SerialNumber, Manufacturer, Model, GroupTag`  
  (or OEM registration)

## Inputs
| Item | Example |
|---|---|
| Device CSV | `SerialNumber, Manufacturer, Model, GroupTag` |
| Group tag | `AP-Pilot` used in dynamic rules |

## Steps

### A) Groups and profile
1. Confirm Pilot and Broad dynamic groups.
2. Assign the Autopilot profile to **Pilot** only.

### B) Import devices
1. Upload the CSV or use OEM registration.
2. Verify devices appear in Autopilot and join the correct dynamic group.

### C) Assign baselines and apps
1. Assign BitLocker, Firewall, Update rings, and admin restrictions to **Pilot**.
2. Assign required apps to **Pilot**.
3. Confirm there are no conflicting settings.

### D) Enroll pilot devices
1. Use new or reset devices.
2. Start OOBE, connect to network, and sign in with a pilot user.
3. Monitor the Enrollment Status Page for app installs and policy application.

### E) Validate
1. Check encryption and compliance in Intune.
2. Confirm required apps installed and functioning.
3. Capture time from first sign-in to compliant state.

### F) Expand to Broad
1. Address pilot issues and update assignments.
2. Assign profiles, baselines, and apps to **Broad**.
3. Enroll in waves and monitor dashboards and tickets.

## Validation gates
- [ ] 90% of pilot devices compliant within 60 minutes
- [ ] No critical app failures in pilot
- [ ] Known issues and rollback steps documented

## Rollback
- Remove affected devices from the Pilot group
- Unassign the problematic profile or app
- Reset the device to a known good state if required

## Metrics to capture
| Metric | Target |
|---|---|
| Median time to compliant | < 45 minutes |
| App install success | ≥ 98% |
| Build or reimage tickets | Down vs baseline |

## Troubleshooting
- Stalled installs: check ESP assignments and app dependencies
- Slow compliance: verify device filters and assignment scope
- BitLocker escrow: confirm policy order and recovery key escrow setting
