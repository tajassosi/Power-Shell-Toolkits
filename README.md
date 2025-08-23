# PowerShell Toolkits

A collection of PowerShell scripts for automation, system management, and event logging. This repository contains multiple scripts that can be used by IT administrators, security specialists, and automation enthusiasts to streamline workflows and monitor systems efficiently.

---

## 📂 Repository Overview

- **TxtToEventLog.ps1** – Converts a `.txt` file into Windows Event Log entries.  
- **OtherScripts/** – Additional PowerShell scripts for system monitoring, log management, and automation tasks.  
- **Docs/** – Optional documentation and guides for each script.  

Each script is modular and can be customized to fit your environment.

---

## ⚙️ Prerequisites

- Windows OS  
- PowerShell 5.1 or later  
- Administrator privileges (required for creating new Event Sources)  

---

## 🚀 Usage

1. Clone the repository:

```bash
git clone https://github.com/tajassosi/Power-Shell-Toolkits.git

    Navigate to the script folder:

cd Power-Shell-Toolkits

    Open and run any script in PowerShell as Administrator. Example:

.\TxtToEventLog.ps1

    Check Windows Event Viewer or follow the script’s instructions for output.

🛠 Customization

    Modify script variables to match your environment (e.g., file paths, log names, event sources).

    Adjust EntryType for Information, Warning, or Error logs.

    Change EventId to categorize different events.

📄 Notes

    Administrator privileges are required for scripts that create Event Sources.

    For large files, consider batching to prevent overloading the Event Log.

    Scripts are reusable and can be combined for more complex automation workflows.

👤 Author

Meysam Tajassosi
