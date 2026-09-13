# lamarlive

> **🔗 Part of the Lamar project:** [Lamar](https://github.com/Hackatoan/Lamar) (Discord bot) · [lamar-web](https://github.com/Hackatoan/lamar-web) (landing site) · [lamarlive](https://github.com/Hackatoan/lamarlive) (/build gallery)

The static shell + gallery for lamarlive.hackatoa.com — pages built by Lamar's Discord `/build` command.

🔗 **Live:** [lamarlive.hackatoa.com](https://lamarlive.hackatoa.com)   ·   ☕ **Support:** [Buy Me a Coffee](https://buymeacoffee.com/hackatoa)

## Overview

Hosts the public gallery of pages generated on demand through Lamar's Discord `/build` command. The repo ships the static shell; the generated pages and sitemap live on the host and are served alongside it.

## Tech Stack

Static HTML · Shell · nginx · Docker

## Deployment

Hybrid: the static shell deploys via GHCR + Watchtower; user-generated `/build` pages and the sitemap are written on the host and mounted read-only.

## Support

If this project is useful to you, consider supporting development:

☕ **[Buy Me a Coffee](https://buymeacoffee.com/hackatoa)**

---

Part of the **[Hackatoa](https://hackatoa.com)** ecosystem — self-hosted apps, browser games, and bots. · [All repositories »](https://github.com/Hackatoan)
