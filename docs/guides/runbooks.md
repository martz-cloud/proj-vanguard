# Runbooks

A compact, step-by-step reference for the two core tracks.

---

## 1) Windows Autopilot Enrollment

> Goal: standardize provisioning and reach compliant state quickly.

### Prerequisites
- Intune MDM authority configured
- Licenses assigned as needed
- Dynamic device groups (Pilot, Broad)
- Autopilot profile (user-driven, naming, region, time zone)
- Baselines ready: BitLocker, Firewall, Update rings, Local admin restrictions or LAPS
- Compliance policies and required apps packaged

### Inputs
| Item | Example |
|---|---|
| CSV device list | `SerialNumber, Manufacturer, Model, GroupTag` |
| Group tag | `AP-Pilot` (used by dynamic rules) |

### Steps
1. **Groups & profile**
   - Confirm Pilot and Broad groups
   - Assign Autopilot profile to **Pilot** only
2. **Import devices**
   - Upload CSV or use OEM registration  
   - Verify devices land in the correct dynamic group
3. **Assign baselines and apps**
   - Apply BitLocker, Firewall, Update rings, admin restrictions
   - Assign required apps to Pilot
4. **Enroll pilot devices**
   - Start OOBE, sign in, monitor ESP
5. **Validate**
   - Check encryption and compliance in Intune
   - Confirm apps installed and functional

### Validation gates
- [ ] 90% of pilot devices compliant within 60 minutes
- [ ] No critical app failures
- [ ] Known issues and rollback steps documented

### Rollback
- Remove affected devices from Pilot scope
- Unassign problematic profiles or apps
- Reset the device to known-good state if needed

### Metrics to capture
| Metric | Target |
|---|---|
| Median time to compliant | < 45 minutes |
| App install success | ≥ 98% in pilot |
| Build/reimage tickets | Down vs baseline |

---

## 2) Entra ID Cutover (Cloud-Only)

> Goal: move modern endpoints to cloud-only identity with minimal disruption.

### Prerequisites
- Autopilot in production
- Dependency map and exceptions list
- GPO to Intune parity plan
- Conditional Access policies staged in **report-only**
- Pilot cohort selected and informed

### Steps
1. **Readiness**
   - Convert needed GPOs to Intune profiles or OMA-URIs
   - Validate policies on Entra-joined test devices
2. **Pilot move**
   - Re-enroll pilot devices to Entra Join when required
   - Confirm compliance and device-based CA evaluation
   - Validate SSO to key apps
3. **Enforce CA for pilot**
   - Move from report-only to enforce for pilot scope
   - Monitor sign-ins and remediate quickly
4. **Retire hybrid for pilot**
   - Stop relying on hybrid join for the cohort
   - Monitor tickets, sign-ins, compliance, Secure Score
5. **Expand**
   - Roll out in waves
   - Communicate schedule, issues, and support plan
   - Decommission hybrid dependencies per plan

### Validation gates
- [ ] No unexpected CA blocks during report-only
- [ ] Pilot devices compliant and receiving policies
- [ ] Key apps accessible with Entra-only identity

### Rollback
- Return users to hybrid cohort
- Re-enable required sync or hybrid settings for that group
- Restore previous assignments and notify stakeholders

### Metrics to capture
| Metric | Target |
|---|---|
| Sign-in success rate | ≥ 99% pilot |
| Time to compliant after re-enroll | < 60 minutes |
| Identity-related tickets | Down vs baseline |

---

## Evidence capture (after each wave)
- Export device compliance, policy assignments, and CA evaluation reports
- Save outputs under `docs/evidence/` or a central repo path
- Update runbook with new issues and mitigations
