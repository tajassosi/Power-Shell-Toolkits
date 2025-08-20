# Compare current state with previous state and log changes
foreach ($user in $users) {
    $name = $user.Name
    $currentSetTimeRaw = $currentState[$name]

    # Skip if no valid date
    if (-not $currentSetTimeRaw) { continue }

    $currentSetTime = [datetime]$currentSetTimeRaw

    if ($prevState.ContainsKey($name) -and $prevState[$name]) {
        $prevSetTime = [datetime]$prevState[$name]
        if ($currentSetTime -ne $prevSetTime) {
            # Log password change without 'to ...'
            $logEntry = "{0} - {1}: Password changed" -f (Get-Date), $name
            Add-Content -Path $logPath -Value $logEntry
        }
    } else {
        # New user or first time tracking
        $logEntry = "{0} - {1}: Password set" -f (Get-Date), $name
        Add-Content -Path $logPath -Value $logEntry
    }
}
