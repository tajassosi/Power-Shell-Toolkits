# PowerShell Scripts Collection

A collection of PowerShell scripts for managing Windows Event Logs, automating tasks, and enhancing system monitoring. This repository is designed to showcase practical scripts for IT administration, cybersecurity tasks, and automation.


---

## 🔹 Features

- Log textual data to Windows Event Viewer
- Custom Event Source creation
- Support for `Information`, `Warning`, and `Error` Event Types
- Batch logging support for large files
- Easy to extend and customize for various automation needs

---

## ⚙️ Prerequisites

- Windows OS
- PowerShell 5.1 or later
- Administrator privileges (required for creating new Event Sources)

---

## 🚀 Usage

1. Clone or download this repository:

```bash
git clone https://github.com/yourusername/PowerShell-Scripts.git

    Navigate to the desired script folder:

cd PowerShell-Scripts

    Run a script in PowerShell as Administrator:

.\TxtToEventLog.ps1

    Check the Windows Event Viewer for entries under the specified Event Source.

🛠 Customization

    Modify the $txtFile, $logName, and $sourceName variables to match your environment.

    Change EntryType for Information, Warning, or Error logs.

    Adjust EventId to categorize different events.

📖 Notes

    Administrator privileges are required for creating Event Sources.

    For large files, consider batching lines to prevent Event Log overload.

    Scripts are modular and can be reused or combined for complex automation.
