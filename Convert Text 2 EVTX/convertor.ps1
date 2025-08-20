# Path to your txt file
$txtFile = "C:\Path\To\yourfile.txt"

# Event log and source names
$logName = "Application"
$sourceName = "MyTxtToEventLogScript"

# Check if the source exists, if not, create it
if (-not [System.Diagnostics.EventLog]::SourceExists($sourceName)) {
    [System.Diagnostics.EventLog]::CreateEventSource($sourceName, $logName)
    Write-Host "Created new Event Source: $sourceName"
}

# Read the txt file line by line and write each line to Event Log
Get-Content $txtFile | ForEach-Object {
    $message = $_
    Write-EventLog -LogName $logName -Source $sourceName -EventId 1000 -EntryType Information -Message $message
    Write-Host "Logged: $message"
}

Write-Host "Finished logging all lines to Event Log."
