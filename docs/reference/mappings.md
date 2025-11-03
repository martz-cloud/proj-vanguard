# Mappings

## GPO → Intune (example)
| GPO Setting | Intune Profile / OMA‑URI | Notes |
|---|---|---|
| BitLocker: OS drive encryption | Endpoint security > Disk encryption | Recovery key escrow to Entra ID |
| Windows Firewall: On | Endpoint security > Firewall |  |

## HIPAA ↔ NIST (example)
| HIPAA | NIST | Implementation | Evidence |
|---|---|---|---|
| 164.312(a)(2)(iv) Encryption | SC‑13 | BitLocker via Intune | Compliance report |
