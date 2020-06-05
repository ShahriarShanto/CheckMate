
# CheckMate
Windows Tool to check media files (audio, video and photos) for corruption using FFmpeg.

The test is performed using [FFmpeg](https://ffmpeg.org/)

Command used: `ffmpeg -v error -i "File/to/check.mp4" -f null`

# Setup:

- Download CheckMate v1.0.zip
- Extract the “CheckMate” folder anywhere
- Run Setup.bat
-- This will copy the files to C:\CheckMate\
- Add C:\CheckMate\ to you PATH
-- Press “Windows + S”
-- Write “env”
-- Select “Edit the system environment variables”
-- Click on “Environment Variables”
-- Under “User Variables” select “PATH”
-- Click on “Edit” then on “New”
-- Copy-Paste this: C:\CheckMate\
-- It’s done. Click “OK” everywhere.

# How to use:

Open **Command Prompt** and change directory to the folder with media files:

#### Usage: `CheckMate [FILTER]`

Filter is used to look for files.
Asterisk or Star * is wildcard, means “It can be anything”

# Example Commands:

### To check all MP3 files 
`CheckMate *.mp3` (Meaning: Any file with .mp3 at the end)

### To check all MKV files 
`CheckMate *.mkv` 
Meaning: Any file with .mkv at the end

### To check all files in the folder
`CheckMate * `
Just a star, means any file

#### Note: If you give no filter, the default filter is *.mp4. So it will check all MP4 files in the directory. Including subdirectories.

#### A list of corrupted files will be at “Corrupted Files.txt”

# Learn more

The test is a comprehensive one. Takes time to read the whole file... 

### Temporary file:
A log file is created while testing called “CheckMate Log.txt”
Let it be. Do not delete / open / edit it.

#### You should know:

If a file is found corrupted according to FFmpeg, it doesn’t mean it is not useful to you. It may be played fully without any error, without any glitch in audio / video. So you don’t have to delete them all.

# Credit:
- FFmpeg from https://ffmpeg.zeranoe.com/builds/

- FFmpeg command and basic script structure was found in StackExchange answer by **Juan Antonio Tubío**:
https://superuser.com/a/1241089

- A few lines of code from this github repo was used too.

- Rest of the scripting was done by me

### Coded with ♥ by [Shahriar Shanto](https://www.facebook.com/Shahriar1234)
