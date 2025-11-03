# Mapping: HIPAA ↔ NIST Controls

| HIPAA | NIST | Implementation | Evidence |
|---|---|---|---|
| 164.312(a)(2)(iv) Encryption | SC‑13 | BitLocker via Intune | Compliance report, policy export |
| 164.312(d) Authentication | IA‑2 | Entra ID MFA + CA | Sign‑in logs, CA export |
| 164.312(c)(1) Integrity | SC‑28 | Defender/AV + tamper protection | MDE reports |
| 164.312(b) Audit controls | AU‑2/6 | Device and sign‑in logging | Log Analytics workbooks |
