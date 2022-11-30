# DEVOPS STUPIDLY SIMPLE
All my notes about my job transition.

## GOAL
To deploy a fully automated Java webapp in Amazon EKS using most common DevOps tools.

## RESOURCES
What resources we are going to require?
- Infraestructure: Terraform
- CI/CD: Jenkins
- Code and config repo: Github
- Configuration: Ansible
- Containers: Docker
- Reliability: Kubernetes
- Cloud platform: Amazon AWS (free tier resources)
- Console operating system: Ubuntu 22.04 x86 (assumed it's fully installed prior start this lab)

## PREPARING UBUNTU LINUX CONSOLE
Let's prepare our Linux console to build all this stuff
```
apt install ansible git
git clone git@github.com:pabonwalt/devops-stupidly-simple.git
ansible-playbook devops-stupidly-simple/ansible-deploy-console/playbook.yml -u ubuntu # replace by yours
```

## CLONING REPO

Clone DevOps Stupidly Simple (DSS) in your Ubuntu Linux console:

```
apt install git
mkdir github.com
git clone git@github.com:pabonwalt/devops-stupidly-simple.git
cd devops-stupidly-simple
git config --global user.email "walter@centre"
git config --global user.name "Walter Pabon"
```

Use following commands to add or update files or directories using git commands from terminal:

```
git add .
git commit -m "adding some changes"
git push -u origin main
```

