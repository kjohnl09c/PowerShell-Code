
Function MyProgress ( $TimeToRun ) {

    write-host "Sleeping $TimeToRun seconds.. "

   for ($i = 1; $i -le $TimeToRun; $i++ ) {
    Write-Progress -Activity "Search in Progress" -Status "$i% Complete:" -PercentComplete $i
    Start-Sleep -Milliseconds 250
    }
}

Function OverWrite {

    Write-Host "Initial text" -NoNewline
    write-host "`r"
    Start-Sleep -Seconds 2
    Write-Host "`rNew text" -NoNewline

    Write-Host "This is some text\r" -NoNewline
    Start-Sleep -Seconds 2
    cls
    Write-Host "This is some NEW text\r" -NoNewline

}


Function timer ($timeInSeconds) {

    $startTime = Get-Date
    #$duration = 100
    $duration = $timeInSeconds
    Write-Host "Timer started for $duration seconds..."

    # Loop until the duration has passed
    # while ((Get-Date) - $startTime).TotalSeconds -lt $duration {
    #Start-Sleep -Seconds 1
    #    }
    $timeInLoop = 0
    $elapsedtime = 0
    While ($quitTime -lt $duration) {

        $timeInLoop += 1
        $elapsedtime = ((Get-Date) - $startTime)
        start-sleep -Seconds 1
        write-host "$timeInLoop"
        $quitTime = $elapsedtime.seconds
        write-host "Quit Time is : $quitTime"

    }

    Write-Host "Time's up!"

}


for ($i = 1; $i -le 30; $i++) {
    Write-Output "Iteration $i Folder 15"
    xcopy "Z:\inetpub\wwwroot\html" "C:\BackupWWWRoot\html\15" /h /i /c /k /e /r /y
    $date = Get-Date #current Date and time
    $addminutes = (Get-Date).AddMinutes(15) # adding 15 minutes to current date and time
    write-output "Next Backup at $addminutes in 30 minute folder"
    write-output "Sleeping 15 minutes...."
    Start-Sleep -Seconds 900
    #MyProgress 900
    write-output "********************************************************************************"
    Write-Output "Iteration $i Folder 30"
    xcopy "Z:\inetpub\wwwroot\html" "C:\BackupWWWRoot\html\30" /h /i /c /k /e /r /y
    $date = Get-Date #current Date and time
    $addminutes = (Get-Date).AddMinutes(15) # adding 15 minutes to current date and time
    write-output "Next Backup at $addminutes in 45 minute folder"
    write-output "Sleeping 15 minutes"
    Start-Sleep -Seconds 900
    #MyProgress 900
    write-output "********************************************************************************"
    Write-Output "Iteration $i Folder 45"
    xcopy "Z:\inetpub\wwwroot\html" "C:\BackupWWWRoot\html\45" /h /i /c /k /e /r /y
    $date = Get-Date #current Date and time
    $addminutes = (Get-Date).AddMinutes(15) # adding 15 minutes to current date and time
    write-output "Next Backup at $addminutes in 60 minute folder"
    write-output "Sleeping 15 minutes"
    Start-Sleep -Seconds 900
    #MyProgress 900
    write-output "********************************************************************************"
    Write-Output "Iteration $i Folder 60"
    xcopy "Z:\inetpub\wwwroot\html" "C:\BackupWWWRoot\html\60" /h /i /c /k /e /r /y
    $date = Get-Date #current Date and time
    $addminutes = (Get-Date).AddMinutes(15) # adding 15 minutes to current date and time
    write-output "Next Backup at $addminutes in 15 minute folder"
    write-output "Sleeping 15 minutes"
    Start-Sleep -Seconds 900
    #MyProgress 900
}