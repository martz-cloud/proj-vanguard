# Mapping: GPO → Intune

| GPO Setting | Intune Profile / OMA‑URI | Notes |
|---|---|---|
| BitLocker: OS drive encryption | Endpoint security > Disk encryption | Recovery key escrow to Entra ID |
| Windows Firewall: Domain/Private/Public On | Endpoint security > Firewall | Profile per network context |
| Local admin restrictions | Endpoint security > Account protection / Custom OMA‑URI | Use Local Users and Groups CSP or LAPS |
| Windows Update ring | Windows Update for Business | Target by device filters |
