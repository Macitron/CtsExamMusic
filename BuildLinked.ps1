# Set Working Directory
Split-Path $MyInvocation.MyCommand.Path | Push-Location
[Environment]::CurrentDirectory = $PWD

Remove-Item "$env:RELOADEDIIMODS/p5rpc.music.CtsExamMusic/*" -Force -Recurse
dotnet publish "./p5rpc.music.CtsExamMusic.csproj" -c Release -o "$env:RELOADEDIIMODS/p5rpc.music.CtsExamMusic" /p:OutputPath="./bin/Release" /p:ReloadedILLink="true"

# Restore Working Directory
Pop-Location