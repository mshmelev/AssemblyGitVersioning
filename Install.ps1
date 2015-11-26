param($installPath, $toolsPath, $package, $project)

$fileInfo = new-object -typename System.IO.FileInfo -ArgumentList $project.FullName
$projectDirectory = $fileInfo.DirectoryName

Copy-Item $toolsPath\Install.gitignore $projectDirectory\Properties\.gitignore