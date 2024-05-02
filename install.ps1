$DESTINATION = $args[0] ?? "C:\Windows\"

$IMMEDIATE_INPUT = Read-Host "Install to: (${DESTINATION})"

$DESTINATION = if (![string]::IsNullOrEmpty($IMMEDIATE_INPUT)) { $IMMEDIATE_INPUT } else { $DESTINATION }

Copy-Item "./conda-init.ps1" -Destination $DESTINATION