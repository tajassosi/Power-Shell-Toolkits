# Change Local Password Tracker

## Overview
This PowerShell script tracks local user password changes on a Windows machine. It records the last password set times for all local users and logs any changes or new password settings in a timestamped log file. The script is useful for system administrators who want to monitor password changes for security and auditing purposes.

## Features
- Tracks local user password changes.
- Logs when a password is set for the first time.
- Maintains a JSON file to store the previous state for future comparisons.
- Generates a simple log with timestamps and usernames for easy monitoring.
- Skips users without a valid password date.
- Fully compatible with all PowerShell versions (no `-Raw` parameter needed).
- Saves files in the user's Documents folder by default.

## Files
- `password_state.json`: Stores the previous state of user passwords. Automatically created if it doesn’t exist.
- `password_change_log.txt`: Log file that records all password changes. Automatically created if it doesn’t exist.

## Usage

1. **Run as Administrator**: The script requires admin privileges to access all local users.
2. **Execute Script**: Run the PowerShell script manually or via Task Scheduler for automated monitoring.
3. **Check Logs**: Open `password_change_log.txt` in your Documents folder to see password changes.

## Default Paths
- State file: `C:\Users\<YourUser>\Documents\password_state.json`
- Log file: `C:\Users\<YourUser>\Documents\password_change_log.txt`

You can modify the paths at the beginning of the script if needed:

```powershell
$statePath = "$env:USERPROFILE\Documents\password_state.json"
$logPath   = "$env:USERPROFILE\Documents\password_change_log.txt"

Example Log Output

8/20/2025 10:34:08 AM - Admin: Password changed
8/20/2025 10:34:08 AM - Administrator: Password set
8/20/2025 10:34:08 AM - Guest: Password set

Notes

Ensure PowerShell is run as Administrator to monitor all local users.

Users with no password or null password set date are skipped automatically.

You can schedule this script to run periodically using Windows Task Scheduler for continuous monitoring.