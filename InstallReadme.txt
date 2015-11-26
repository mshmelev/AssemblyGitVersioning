If you use auto package restore, create .gitignore file in packages folder with the following content:

# ignore all files
*
# do not ignore directories
!*/
# do not ignore build targets
!**/build/**
# do not ignore gitignore
!*.gitignore
