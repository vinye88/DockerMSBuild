# My Docker Image Sample
This sample produces a docker image w/ Visual Studio, capable of building cpp projects on Docker containers.

## Building
To build this image from this directory, run:

```batch
.\BuildImage.bat
```

## Running
To map and build native sources from a clean source repository, run:

```batch
.\RunImage.bat
```

Edit the variables inside RunImage.bat in order to customize the solution path and build parameters.
