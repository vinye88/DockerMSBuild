@echo off

set BuildSolutionFolder=.\ConsoleApplication1
set BuildCmd=msbuild
set BuildArgs=c:\ConsoleApplication1\ConsoleApplication1.sln /p:Configuration=Release /p:Platform=x86
set DockerSolutionFolder=c:\ConsoleApplication1
set DockerContainerName=mycpptest
set DockerImageName=mybuildenv

docker rm %DockerContainerName%

docker run -v %BuildSolutionFolder%:%DockerSolutionFolder% --name %DockerContainerName% %DockerImageName% %BuildCmd% %BuildArgs%