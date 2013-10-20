# docker-sage

Docker container for Sage (http://sagemath.org).

The `Dockerfile` builds Sage 5.12 from source.

## Notes

* You need a bit more RAM than the standard Docker Vagrantfile gives you.
  I recommend at least 1 GB of RAM on your VM.
* The build takes a really long time, probably several hours.
* The builds take a lot of disk space (several GB).
