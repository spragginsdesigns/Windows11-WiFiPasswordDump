$wifiProfiles = netsh wlan show profiles | Select-String -Pattern 'All User Profile' | ForEach-Object {
    $_ -split ': ' | Select-Object -Last 1
}

$reportPath = "$env:USERPROFILE\Desktop\WiFiPasswords.txt"
Remove-Item -Path $reportPath -ErrorAction Ignore

foreach ($profile in $wifiProfiles) {
    $passwordLine = netsh wlan show profile name="$profile" key=clear | Select-String -Pattern "Key Content"
    if ($passwordLine) {
        $password = $passwordLine -split ': ' | Select-Object -Last 1
        $output = "Profile: $profile, Password: $password"
        Add-Content -Path $reportPath -Value $output
    } else {
        $output = "Profile: $profile, Password: Not found or not available."
        Add-Content -Path $reportPath -Value $output
    }
}

Write-Output "WiFi profiles and passwords have been saved to $reportPath"
