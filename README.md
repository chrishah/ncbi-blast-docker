# ncbi-blast-docker
Ubuntu 18.04 with ncbi-blast+

The image contains a full install of [ncbi-blast+](ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/LATEST/), including all necessary dependencies. I am not part of the developer team - I just made this image.

In detail, the image is set up with:
 - Ubuntu 18.04
 - ncbi-blast+ 2.6.0

To run any program from the ncbi-blast suite you can do the following (this will mount the directory `/in` of the container to the current working directory on your local machine, and allow you to access files in this directory and any sub-directories):
```bash
$ docker run --rm -v $(pwd):/home/in -w /in chrishah/ncbi-blast:v2.6.0 blastn

$ docker run --rm -v $(pwd):/home/in -w /in chrishah/ncbi-blast:v2.6.0 update_blastdb
```

You can also enter the container environment and work within it. All executables should be in the `PATH`.
```bash
$ docker run -it --rm -v $(pwd):/in -w /in chrishah/ncbi-blast:v2.6.0 /bin/bash
```

