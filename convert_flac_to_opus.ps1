$flacFiles = Get-ChildItem -Path . -Filter "*.flac"

$logFile = "ffmpeg_log.txt"
$stdLogFile = "ffmpeg_std_log.txt"
$errLogFile = "ffmpeg_err_log.txt"
Clear-Content -Path $logFile -ErrorAction SilentlyContinue  # Keep main log clean
Clear-Content -Path $stdLogFile -ErrorAction SilentlyContinue
Clear-Content -Path $errLogFile -ErrorAction SilentlyContinue

foreach ($file in $flacFiles) {
    $inputFile = $file.FullName
    $outputFile = [System.IO.Path]::ChangeExtension($inputFile, ".opus")
    $relativeInputFile = $file.Name
    $relativeOutputFile = [System.IO.Path]::GetFileName($outputFile)
    
    Write-Host "Converting: $relativeInputFile"
    
    $process = Start-Process -FilePath "ffmpeg" -ArgumentList "-i `"$inputFile`" -c:a libopus -b:a 320k `"$outputFile`"" -NoNewWindow -Wait -PassThru -RedirectStandardOutput $stdLogFile -RedirectStandardError $errLogFile
    
    # Append both standard output and error logs to the main log
    Add-Content -Path $logFile -Value (Get-Content $stdLogFile)
    Add-Content -Path $logFile -Value (Get-Content $errLogFile)
    
    if ($process.ExitCode -eq 0) {
        Write-Host "  SUCCESSFUL conversion: $relativeOutputFile"
    } else {
        Write-Host "  ERROR during conversion: $relativeInputFile"
    }
}

Remove-Item $stdLogFile
Remove-Item $errLogFile

