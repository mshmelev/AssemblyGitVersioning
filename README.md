# AssemblyGitVersioning
Adds current Git hash to assembly version, so it looks like 1.0.0.0-e7f45a6

#Overview
To easily find a GIT commit which your binary assembly relates to, it would be very handy to have the GIT commit hash in the assembly info. And having something like "1.0.0.0-e7f45a6" instead of just "1.0.0.0" in you file properties:

![alt tag](http://1.bp.blogspot.com/-V94BKt5Y4C8/Ut2qhROGYPI/AAAAAAAACQY/h7iRUZkutgM/s1600/Properties.png)

This solution appends commit hash to your assembly's version and puts it all together to AssemblyInformationalVersion attribute, so in your assembly file properties you would have something like "Product version: 1.0.0.0-e7f45a6".

# How to Use
1. Add nuget package to your project:
`Install-Package AssemblyGitVersioning`
2. If you use auto package restore, create `.gitignore` file in `packages` folder with the following content:
```yaml
# ignore all files
*
# do not ignore directories
!*/
# do not ignore build targets
!**/build/**
# do not ignore gitignore
!.gitignore
```

# How It Works
It dynamically creates GeneratedAssemblyInfo.cs file, extracts version from AssemblyVersion attribute, and adds current GIT commit hash before each build.
