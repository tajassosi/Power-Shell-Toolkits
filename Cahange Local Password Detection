# Path to store the previous state
$statePath = "C:\password_state.json"

# Load previous state
if (Test-Path $statePath) {
    $prevState = Get-Content -Path $statePath | ConvertFrom-Json
} else {
    $prevState = @{}
}

# Get current password last set times
$currentState = @{}
$users = Get-LocalUser | Select-Object Name, PasswordLastSet

foreach ($user in $users) {
    $currentState[$user.Name] = $user.PasswordLastSet
}

# Compare current state with previous state and log changes
$logPath = "C:\password_change_log.txt"
foreach ($user in $users) {
    $name = $user.Name
    $currentSetTime = $currentState[$name]
    if ($prevState.ContainsKey($name)) {
        $prevSetTime = $prevState[$name]
        if ($currentSetTime -ne $prevSetTime) {
            $logEntry = "{0} - {1}: Password changed from {2} to {3}" -f (Get-Date), $name, $prevSetTime, $currentSetTime
            Add-Content -Path $logPath -Value $logEntry
        }
    } else {
        $logEntry = "{0} - {1}: Password set to {2}" -f (Get-Date), $name, $currentSetTime
        Add-Content -Path $logPath -Value $logEntry
    }
}

# Save current state for future comparisons
$currentState | ConvertTo-Json | Set-Content -Path $statePath
