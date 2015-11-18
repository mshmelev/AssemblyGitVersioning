@del AssemblyGitVersioning*.nupkg

.nuget\nuget pack AssemblyGitVersioning.nuspec
@if errorlevel 1 goto BuildFailed

:BuildFailed
