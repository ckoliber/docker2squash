# Docker2Squash

Docker2Squash is a docker image for building squashfs files from local docker images.

## Usage

```bash
docker run --rm -it --net=host -v $(pwd):/data -v /var/run/docker.sock:/var/run/docker.sock ghcr.io/ckoliber/docker2squash java
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)
