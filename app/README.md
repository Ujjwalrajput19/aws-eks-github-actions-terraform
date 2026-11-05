# AWS EKS 2048 Application

A React and TypeScript implementation of the 2048 puzzle game, packaged as a Docker container and designed to run on Amazon Elastic Kubernetes Service (EKS).

## Application Overview

This application is the frontend component of the AWS EKS GitOps CI/CD project.

The application uses:
- React
- TypeScript
- Docker
- Nginx

## Local Development

Install dependencies using `npm install`.

Start the development server using `npm start`.

The application is configured to run at http://localhost:3000.

## Docker

The application includes a Dockerfile and Nginx configuration for containerized deployment.

The Docker image is intended to be published to Amazon Elastic Container Registry (ECR) and deployed to Amazon EKS through GitHub Actions and ArgoCD.

## Deployment

For AWS infrastructure, CI/CD configuration, Kubernetes manifests, and deployment instructions, see the [main project README](../README.md).

## Attribution

The original 2048 React application implementation was adapted from its original developer's project. See the main repository README for source attribution and project credits.
