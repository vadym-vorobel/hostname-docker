# hostname-docker

Small binary to test networking with docker.

Fork of the [adongy/hostname-docker](https://github.com/adongy/hostname-docker) but with the ability to pass `PORT` as an environment variable.

**Usage example:**

```bash
docker run -e "PORT=3001" -p 3001:3001 vadymvorobel/hostname-docker
```
