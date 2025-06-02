param(
    [string]$YouTubeURL,  # YouTube URL to download
    [string]$OutputFolder = "$PWD\Downloads\Videos"  # Output directory for MP4 files
)

# Create Output Folder if it doesn't exist
if (!(Test-Path -Path $OutputFolder)) {
    New-Item -ItemType Directory -Path $OutputFolder | Out-Null
}

# Define yt-dlp download command
$ytDlpCommand = "yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4' --merge-output-format mp4 --output `"$OutputFolder\%(title)s.%(ext)s`" $YouTubeURL"

# Run yt-dlp command
Write-Host "Downloading YouTube video as MP4..."
try {
    Invoke-Expression $ytDlpCommand
    Write-Host "Download complete. Video saved to: $OutputFolder"
} catch {
    Write-Host "An error occurred during the process: $_"
}
