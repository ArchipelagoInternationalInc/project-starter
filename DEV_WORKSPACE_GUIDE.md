# Archipelago International Studios — Master Dev Workspace Guide
## Technical Inventory & System Onboarding Playbook

**FOR RE-ONBOARDING AI CHATS:** If starting a completely fresh context window, read this document to understand the studio's exact architecture, current multi-computer states, and local terminal installation patterns. Do not guess, skip steps, or deviate from these established studio rules. 

---

## 💻 1. The Hardware Layout (June 2026 Status)

1. **Studio Mac Pro (Dining Room):** The primary master developer environment. Brand-new Apple Silicon workstation. High-priority configuration target.
2. **PR Mac (Dining Room):** 2019 21.5" Intel iMac. Your legacy workstation. Fragile operational state. It contains local project files and will be wiped clean and re-installed ONLY after the Studio Mac Pro is 100% functional.
3. **27" iMac (Upstairs):** Secondary developer workstation provided by W-2 employment[cite: 2]. Must remain perfectly interchangeable and synchronized with the Studio Mac Pro.
4. **Madelyn's Laptop:** 10-12 year old legacy MacBook[cite: 2]. Bypasses local terminal code compilations. Madelyn will heavily utilize web-based interfaces, browser tooling, and Claude Cowork pipelines.

---

## 🧳 2. The Core Software Inventory

Every active developer machine in the studio portfolio (Macs 1, 2, and 3) must run native versions of these exact foundations to ensure total cross-room compatibility:
*   **Homebrew:** The master command-line package manager for macOS.
*   **GnuPG (`gnupg`):** Security pre-requisite for validating cryptographic code signatures.
*   **GitHub CLI (`gh`):** Securely authenticates developer identity to pull/push repositories natively.
*   **Doppler CLI (`doppler`):** Secure cloud secrets manager. Streams environment keys straight into live memory at runtime, removing unencrypted `.env` files from local disks.
*   **Fast Node Manager (`fnm`):** Handles clean installation and toggling of native Node.js runtimes.
*   **Node.js & pnpm:** The core execution engine and package installer for running Next.js 14 applications.
*   **Claude Code CLI (`claude`):** Anthropic's terminal-native agentic pair-programmer.

---

## 🛠️ 3. Step-by-Step System Installation Code (Run on New Machine Setup)

**INSTRUCTIONS FOR THE AI:** Guide the user through these phases **one line at a time**. Do not output a wall of code. Wait for the user to reply that a command has completed successfully before handing them the next line.

### Phase 1: Package Management (Homebrew)
Execute the master installation script:
```bash
/bin/bash -c "$(curl -fsSL [https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh](https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh))"