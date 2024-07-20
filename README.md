# CodeServer Deployment on com

This repository contains the necessary files to deploy CodeServer on Scalingo using Kubernetes with autoscaling.

## Files

- `Dockerfile`: Dockerfile to build the CodeServer image.
- `k8s/codeserver-deployment.yaml`: Kubernetes deployment configuration for CodeServer.
- `k8s/codeserver-service.yaml`: Kubernetes service configuration for CodeServer.
- `k8s/codeserver-hpa.yaml`: Kubernetes horizontal pod autoscaler configuration for CodeServer.
- `.gitignore`: Git ignore file to exclude unnecessary files from the repository.

## Deployment Steps

1. Build and push the Docker image to a container registry:
    ```bash
    docker build -t <your-docker-image> .
    docker push <your-docker-image>
    ```

2. Apply the Kubernetes configurations:
    ```bash
    kubectl apply -f k8s/codeserver-deployment.yaml
    kubectl apply -f k8s/codeserver-service.yaml
    kubectl apply -f k8s/codeserver-hpa.yaml
    ```

3. Verify the deployment:
    ```bash
    kubectl get pods
    kubectl get svc
    kubectl get hpa
    ```

## Accessing CodeServer

Once deployed, you can access CodeServer using the IP address or DNS provided by the LoadBalancer service.
