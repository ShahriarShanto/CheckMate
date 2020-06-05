
# CheckMate
Tool to check media files (audio, video and photos) for corruption.

The test is performed using [FFmpeg](https://ffmpeg.org/)

Command used: `ffmpeg -v error -i "File/to/check.mp4" -f null`

# Example Usage
![Example](https://i.ibb.co/2k59G6H/Screenshot-4.png)

# Setup:

- Download CheckMate v1.0.zip
- Extract the “CheckMate” folder anywhere
- Run Setup.bat
	- This will copy the files to C:\CheckMate\
- Add C:\CheckMate\ to your PATH
	- Press “Windows + S”
	- Write “env”
	- Select “Edit the system environment variables”
	- Click on “Environment Variables”
	- Under “User Variables” select “PATH”
	- Click on “Edit” then on “New”
	- Copy-Paste this: **`C:\CheckMate\`**
	- It’s done. Click “OK” everywhere.

# How to use:

Open **Command Prompt** and change directory to the folder with media files:

#### Usage: `CheckMate [FILTER]`

Filter is used to look for files. in current directory + subdirectories.
#### Asterisk or Star * is wildcard, means “It can be anything”

# Example Commands:

### To check all MP3 files 
**`CheckMate *.mp3`** Meaning: Any file with .mp3 at the end

### To check all MKV files
**`CheckMate *.mkv`** Meaning: Any file with .mkv at the end

### To check all files in the directory + subdirectories
**`CheckMate * `** Just a star, means any file

#### Note: If you give no filter, the default filter is *.mp4.
#### So it will check all MP4 files in the directory. Including subdirectories.

#### A list of corrupted files will be at “Corrupted Files.txt”

# Learn more

The command in the script:
`ffmpeg -v error -i "File/to/check.mp4" -f null`

Actually it's job is to **convert the media file** to  **null** i.e. **nothing**

So, **FFmpeg reads the whole file for the conversion.**

When it finds any errors in it, tells us! This is how the script works.

It may take a long time to read the whole file.
Testing all your movies will take hours to complete!

### Temporary file:
A log file is created while testing called “CheckMate Log.txt”
**Let it be. Do not delete / open / edit it.**

### You should know:

If a file is found to be corrupted according to FFmpeg, it doesn’t mean it is not useful to you.

It may be played fully without any error, without any glitch in audio / video. So you don’t have to delete them all.

But it might have got corrupted during download, copy, re-encode, remux etc. So, you may want to do that again from the source and recheck.

# Credits:
- FFmpeg from https://ffmpeg.zeranoe.com/builds/

- FFmpeg command and basic script structure was found in StackExchange answer by **Juan Antonio Tubío**:
https://superuser.com/a/1241089

- A few lines of code from this [github repo](https://github.com/describe19/check-video) was used too.

- Rest of the scripting was done by me

### Coded with ♥ by [Shahriar Shanto](https://www.facebook.com/Shahriar1234)
