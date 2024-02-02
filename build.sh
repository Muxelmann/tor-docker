docker buildx build --push --platform linux/arm64/v8,linux/amd64 --tag muxelmann/tor --file Dockerfile .
docker buildx build --push --platform linux/arm64/v8,linux/amd64 --tag muxelmann/tor:mkp224o --file Dockerfile.mkp224o .
docker buildx build --push --platform linux/amd64 --tag muxelmann/mkp224o --file Dockerfile.mkp224o-only .
