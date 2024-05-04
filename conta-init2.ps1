$ENVFILE_NAME = "environment.yml"

$defaultEnvName = if ($args[0]) { $args[0] } else { Split-Path -Path $PWD -Leaf }
$defaultPythonVersion = $args[1] ?? "3.10.14"

function Read-UserInput {
    param (
        [string]$prompt,
        [string]$default
    )
    $prompt_input = Read-Host "$prompt ($default)"
    if (![string]::IsNullOrEmpty($prompt_input)) { $prompt_input } else { $default }
}

$condaEnvName = Read-UserInput "Enter environment name" $defaultEnvName
$condaPythonVersion = Read-UserInput "Enter environment version" $defaultPythonVersion

Write-Host "Creating environment: $condaEnvName with python version: $condaPythonVersion"

$fileContent = @"
name: $condaEnvName
channels:
  - defaults
dependencies:
  - python=$condaPythonVersion
"@

Set-Content -Path $ENVFILE_NAME -Value $fileContent
