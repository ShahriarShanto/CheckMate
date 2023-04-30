$filein = $args[0]
$fileout = $args[1]

$start_time = Read-Host "Enter the start time"
$end_time = Read-Host "Enter end time"

Write-Host "Cutting... $start_time to $end_time"
ffmpeg -i $filein -ss $start_time -to $end_time -c copy $fileout
