# Ensure yt-dlp and FFmpeg are installed and accessible from the command line.
# Usage: Save this script as "YouTubeToMP3.ps1" and run it.

param(
    [string]$YouTubeURL,  # YouTube URL to download
    [string]$OutputFolder = "$PWD\Downloads\Music"  # Output directory for MP3s
)

# Create Output Folder if it doesn't exist
if (!(Test-Path -Path $OutputFolder)) {
    New-Item -ItemType Directory -Path $OutputFolder | Out-Null
}

# Define yt-dlp download command
$ytDlpCommand = "yt-dlp --extract-audio --audio-format mp3 --output `"$OutputFolder\%(title)s.%(ext)s`" $YouTubeURL"

# Run yt-dlp command
Write-Host "Downloading and converting to MP3..."
try {
    Invoke-Expression $ytDlpCommand
    Write-Host "Download and conversion complete. Files saved to: $OutputFolder"
} catch {
    Write-Host "An error occurred during the process: $_"
}

