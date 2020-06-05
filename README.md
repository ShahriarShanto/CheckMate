# CheckMate
Windows Tool to check media files for corruption using FFmpeg

The test is performed using FFmpeg

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

Open Command Prompt, change directory to the folder with media files:

Usage: CheckMate [FILTER]

Filter is used to look for files. Asterisk or Star * is wildcard, means “It can be anything”

# Example Commands:

To check all MP3 files 
CheckMate *.mp3 (Meaning: Any file with .mp3 at the end)

To check all MKV files 
CheckMate *.mkv (Meaning: Any file with .mkv at the end)

To check all files in the folder
CheckMate * (Just a star, means any file)

If you give no filter, the default filter is *.mp4
So it will check all MP4 files in the folder

A list of corrupted files will be at “Corrupted Files.txt”

# Learn more

The test is a comprehensive one. Takes time to read the whole file... 

Temporary file:
A log file is created while testing called “CheckMate Log.txt”
Let it be. Do not delete / open / edit it.

You should know:

If a file is found corrupted according to FFmpeg, it doesn’t mean it is not useful to you. It may be played without any error, without any glitch in audio / video. So you don’t have to delete them all.

Corrupted according to FFmpeg means, the file has any abnormalities in the headers or metadata

# Credit:
Download ffmpeg from https://ffmpeg.zeranoe.com/builds/
The FFmpeg command and basic program structure was found in Stack Overflow
A few lines of code from this github repo was used too.

I improved the script, added features and stuff... :D
