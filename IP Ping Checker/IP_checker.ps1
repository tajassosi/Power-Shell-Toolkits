$InputFile = ".\ips.txt"
$OutputFile = ".\ping-results.txt"

if (-not (Test-Path -Path $InputFile)) {
    Write-Host "ips.txt file was not found."
    Read-Host "Press Enter to exit"
    exit
}

"IP | Status" | Set-Content -Path $OutputFile -Encoding UTF8

$IPs = Get-Content -Path $InputFile

foreach ($IP in $IPs) {
    $IP = $IP.Trim()

    if ($IP -eq "") {
        continue
    }

    $Result = Test-Connection -ComputerName $IP -Count 1 -Quiet -ErrorAction SilentlyContinue

    if ($Result -eq $true) {
        "$IP | Reachable" | Add-Content -Path $OutputFile -Encoding UTF8
    }
    else {
        "$IP | Unreachable" | Add-Content -Path $OutputFile -Encoding UTF8
    }
}

Write-Host "Ping completed."
Write-Host "Output file: $OutputFile"
Read-Host "Press Enter to exit"
