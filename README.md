# myDockerfiles

I use this repository to gather Dockerfiles (and their corresponding [images on DockerHub](https://hub.docker.com/u/jmonlong)) that I might need to reuse at some point.

In particular I made a [Ubuntu images with R](ubuntu.18.04.R.3.6.Bioc) where I installed the packages I tend to use (tidyverse + Bioconductor) and R-Markdown/LaTeX. 
It takes a long time to build it so it's convenient to have it [ready on DockerHub](https://hub.docker.com/r/jmonlong/ubuntur) as a starting point for future images (R-based or combined with other tools).
For example, I made an image with the [sveval](https://github.com/jmonlong/sveval) package starting from this image and it just needed to install the new dependencies when building.

Many of the images also have Python3 installed with `awscli` because I used them to start cloud instances or kubernete jobs from which I want to download/upload data.


