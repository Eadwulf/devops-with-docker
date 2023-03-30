# Description
Ubuntu-based image to build a container that extracts audio and video from
Youtube and over 1000 other video hosting websites.

# Usage

### Build The Image
```console
$ docker build . -t youtube-dl
```

### Run The Container
```console
$ docker run youtube-dl https://imgur.com/JY5tHqr
```

Alternatively, define a host volume to be able to access the downloaded file
```console
$ docker run -v "$(pwd):/mydir" youtube-dl https://imgur.com/JY5tHqr
```
