param(
    [string]$YouTubeURL,  # YouTube URL to download
    [string]$OutputFolder = "$PWD\Downloads\Videos"  # Output directory for MP4 files
)

if (!(Test-Path -Path $OutputFolder)) {
    New-Item -ItemType Directory -Path $OutputFolder | Out-Null
}

$ytDlpCommand = "yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4' --merge-output-format mp4 --output `"$OutputFolder\%(title)s.%(ext)s`" `"$EncodedURL`""

Write-Host "Downloading YouTube video as MP4..."
try {
    Invoke-Expression $ytDlpCommand
    Write-Host "Download complete. Video saved to: $OutputFolder"
} catch {
    Write-Host "An error occurred during the process: $_"
}
