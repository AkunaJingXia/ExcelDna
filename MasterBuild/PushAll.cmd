setlocal

set currentPath=%~dp0
set basePath=%currentPath:~0,-1%
set rootPath=%~dp0..\..

rem nuget.exe push "%rootPath%\IntelliSense\NuGet\nupkg\ExcelDna.IntelliSense.1.6.1-alpha3.nupkg" -Source  https://api.nuget.org/v3/index.json -Verbosity detailed -NonInteractive
@if errorlevel 1 goto end

rem nuget.exe push "%rootPath%\ExcelDnaDoc\Package\nupkg\ExcelDnaDoc.1.6.1-alpha3.nupkg" -Source  https://api.nuget.org/v3/index.json -Verbosity detailed -NonInteractive
@if errorlevel 1 goto end

nuget.exe push "%rootPath%\Registration\NuGet\nupkg\ExcelDna.Registration.1.6.1-alpha3.nupkg" -Source  https://api.nuget.org/v3/index.json -Verbosity detailed -NonInteractive
@if errorlevel 1 goto end

nuget.exe push "%rootPath%\Registration\NuGet\nupkg\ExcelDna.Registration.FSharp.1.6.1-alpha3.nupkg" -Source  https://api.nuget.org/v3/index.json -Verbosity detailed -NonInteractive
@if errorlevel 1 goto end

nuget.exe push "%rootPath%\Registration\NuGet\nupkg\ExcelDna.Registration.VisualBasic.1.6.1-alpha3.nupkg" -Source  https://api.nuget.org/v3/index.json -Verbosity detailed -NonInteractive
@if errorlevel 1 goto end

nuget.exe push "%rootPath%\DeveloperTools\ExcelDna.Testing\Package\nupkg\ExcelDna.Testing.1.6.1-alpha3.nupkg" -Source  https://api.nuget.org/v3/index.json -Verbosity detailed -NonInteractive
@if errorlevel 1 goto end

:end