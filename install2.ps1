# Define default installation path
$DESTINATION = $args[0] ?? "C:\Windows\"

# Prompt user for installation directory
$IMMEDIATE_INPUT = Read-Host "Install to: (${DESTINATION})"

# Set the destination based on user input or use default
$DESTINATION = if (![string]::IsNullOrEmpty($IMMEDIATE_INPUT)) { $IMMEDIATE_INPUT } else { $DESTINATION }

# Attempt to copy the file with error handling
try {
    Copy-Item "./conda-init.ps1" -Destination $DESTINATION -ErrorAction Stop
    Write-Host "Script successfully copied to $DESTINATION"
} catch {
    Write-Error "Failed to copy script: $_"
}
