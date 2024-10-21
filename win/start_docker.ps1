# Check if Docker is running by trying to get Docker info
try {
    docker info > $null 2>&1
    $dockerRunning = $true
} catch {
    $dockerRunning = $false
}

if (-not $dockerRunning) {
    Write-Output "Docker is not running. Starting Docker Desktop..."

    # Start Docker Desktop using the Start-Process cmdlet
    Start-Process -NoNewWindow "C:\Program Files\Docker\Docker\Docker Desktop.exe"

    # Wait for Docker to start by checking the status in a loop
    while (-not (docker info > $null 2>&1)) {
        Write-Output "Waiting for Docker to start..."
        Start-Sleep -Seconds 2
    }

    Write-Output "Docker is now running!"
} else {
    Write-Output "Docker is already running."
}
