# K8 Restart-mnk-rendering-renderd-service Docker image

### Usage
K8 Cron job to restart Mnk-rendering POD renderd and apache2 service.

### Build Docker Restart-mnk-rendering-renderd-service image and run container

```bash
# Build Docker image
docker buildx build -t restart-mnk-rendering-renderd-service .

# Run Docker container
docker run -it --rm \
--env="DO_KUBERNETES_TOKEN=<CHANGE_IT>" \
--env="DO_KUBERNETES_CLUSTER_ID=<CHANGE_IT>" \
--env="DO_KUBERNETES_CLUSTER_CREDENTIALS_EXPIRY=<CHANGE_IT>" \
--name=restart-mnk-rendering-renderd-service \
restart-mnk-rendering-renderd-service OR auto0mat/restart-mnk-rendering-renderd-service:latest
```

### Licence

[GNU AGPLv3](https://www.gnu.org/licenses/agpl-3.0.en.html) or later.
