# TXT to Windows Event Log Script

A PowerShell script that reads a text file and logs each line into the Windows Event Log. This is useful for monitoring, debugging, or archiving textual information in the Event Viewer.

---

## Features

- Reads a `.txt` file line by line
- Logs each line to the Windows Event Log
- Supports custom Event Source creation
- Logs with `Information` type by default (can be changed)
- Optional: easy to extend for `Warning` or `Error` logs

---

## Prerequisites

- Windows OS
- PowerShell (5.1 or later)
- Administrator privileges (required for creating a new Event Source)

---

## Usage

1. Clone or download this repository.
2. Update the script variables:

```powershell
$txtFile = "C:\Path\To\yourfile.txt"      # Path to your text file
$logName = "Application"                  # Event log name
$sourceName = "MyTxtToEventLogScript"     # Custom event source

    Run the script in PowerShell as Administrator:

.\TxtToEventLog.ps1

    Check the Event Log in Event Viewer under the specified source.

Customization

    Change EntryType to Warning or Error if needed:

Write-EventLog -LogName $logName -Source $sourceName -EventId 1000 -EntryType Warning -Message $message

    Modify EventId to categorize different types of messages.

Notes

    Running the script for the first time creates a new Event Source.

    For large files, consider batching to prevent overloading the Event Log.

    Administrator privileges are required to create new Event Sources.