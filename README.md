# 🎥 Windows YouTube Downloader Scripts

🚀 **Easily download YouTube videos and convert them into MP4 or MP3 formats using PowerShell scripts!** 

## Features
- 📥 Download videos directly as MP4 files.
- 🎵 Convert videos to MP3 audio format effortlessly.
- 🛠️ Fully customizable output directory.
- 💻 No prior scripting knowledge required—simple and user-friendly.

---

## 🔧 Requirements
1. **Dependencies**:
   - [yt-dlp](https://github.com/yt-dlp/yt-dlp): Install via Python pip.
     ```bash
     pip install yt-dlp
     ```
     or
     ```bash
     choco install yt-dlp
     ```

> If you find a forbidden issue, please update your yt-dlp using the following command:
> `yt-dlp -U`

   - [FFmpeg](https://ffmpeg.org/): Required for MP3 extraction.
     ```bash
     choco install ffmpeg
     ```

2. **PowerShell**:
   - Compatible with PowerShell 5.1 and above.

---

## 🖥️ Usage

### Download YouTube Videos as MP4
1. Clone this repository:
   ```bash
   git clone https://github.com/alterwriter/Win-YT-Downloader.git
   cd YouTubeDownloaderScripts

2. Run the MP4 downloader:
    ```bash
    .\YouTubeToMP4.ps1 -YouTubeURL "https://www.youtube.com/watch?v=VIDEO_ID"
    ```

### Download YouTube Videos to MP3
1. Run the mp3 Converter:
    ```bash
    .\YouTubeToMP3.ps1 -YouTubeURL "https://www.youtube.com/watch?v=VIDEO_ID"
    ```
2. Find your downloaded files in the `Downloads` folder.

---

## 🤝 Contributing
Contributions are welcome! Follow these steps to contribute:
1. Fork this repository.
2. Create a new branch (`git checkout -b feature-branch-name`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature-branch-name`).
5. Open a pull request.

---

## 🌟 Acknowledgments
Special thanks to:
- [yt-dlp](https://github.com/yt-dlp/yt-dlp) for making video downloads easy.
- [FFmpeg](https://ffmpeg.org/) for seamless media conversions.

---

## 📧 Contact
For questions or suggestions, feel free to open an issue or contact:
- GitHub: [alterwriter](https://github.com/alterwriter)
