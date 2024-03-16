# Imager
Imager builds custom docker images with required tooling installed, meant to be used as base images.

## Usage

1. Add/Update `Dockerfile` in the language specific directory in `./dockerfiles`. The language directory naming should follow the official base image's repository naming format. Eg: For Golang it'll be: `./dockerfiles/golang/Dockerfile`
2. In the `Dockerfile`, first line should define a default version. Eg: `ARG VERSION=1.21-alpine //Default`
3. In the `Dockerfile`, when using a base image, provide its version using the VERSION variable. Eg: `FROM golang:${VERSION}`
4. Add your modifications for the custom image. Push the changes
5. Create a git tag based on this format `<language>,<version-including-base-if-applicable>`. Eg: `golang,1.21.6-alpine`
6. Push the git tag
