# David Tiberias Web Platform & Gateway

This repository (`davidtiberias.github.io`) serves as the central hosting endpoint and deployment gateway for David Gilang Tiberias's dual web presence, powered by **Next.js 15, Payload CMS 3, and SQLite**.

---

## Architecture & Endpoints

| URL Path | Platform Target | Focus & Scope |
| :--- | :--- | :--- |
| [`/home`](/home) | **Dual Platform Gateway** | Central routing portal connecting both platforms |
| [`/davidtiberias`](/davidtiberias) | **David Gilang Tiberias** | Personal Architectural Strategist & PMO portfolio |
| [`/tiberias`](/tiberias) | **TIBERIAS.** | Institutional Spatial Intelligence & Management Consultancy |
| [`/admin`](/admin) | **Payload CMS 3** | Embedded Content Management System backed by SQLite |

---

## Local Development (Single Server)

The entire platform runs from a unified **Next.js 15 + Payload CMS 3 + SQLite** project in `../davidtiberias`:

```bash
cd ../davidtiberias
npm install
npm run dev
```

Once running:
- **Central Gateway**: [http://localhost:3000/home](http://localhost:3000/home)
- **Personal & PMO Platform**: [http://localhost:3000/davidtiberias](http://localhost:3000/davidtiberias)
- **Consultancy Platform**: [http://localhost:3000/tiberias](http://localhost:3000/tiberias)
- **Payload CMS Admin**: [http://localhost:3000/admin](http://localhost:3000/admin)

---

## Deployment & Sync

To build and update the web platform:
```powershell
.\sync-subprojects.ps1
```
