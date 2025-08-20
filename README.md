# PowerShell Script - Local User Password Change Tracker

This PowerShell script monitors **local user accounts** on a Windows system and logs whenever their passwords are changed.

## 🔹 Features
- Tracks password changes for all local users.
- Maintains a JSON file with the last known password set time.
- Logs every detected password change with timestamp details.
- Provides historical logging in a text file for auditing.

## 🔹 How It Works
1. The script checks all local users and retrieves their `PasswordLastSet` property.
2. It compares the current state against the previously saved state (`password_state.json`).
3. If a change is detected:
   - A log entry is written to `password_change_log.txt` with details of the modification.
4. The current state is saved back to `password_state.json` for future comparisons.

## 🔹 Files Used
- **C:\password_state.json** → Stores the last known password state.  
- **C:\password_change_log.txt** → Logs all detected password changes.  
