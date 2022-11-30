# DEVOPS STUPIDLY SIMPLE
All my notes about my job transition.

## GOAL
To deploy a fully automated Java webapp in Amazon EKS using most common DevOps tools.

## RESOURCES
What resources we are going to use?
- Infraestructure: Terraform
- CI/CD: Jenkins
- Code and config repo: Github
- Configuration: Ansible
- Containers: Docker
- Reliability: Kubernetes
- Cloud platform: Amazon AWS (free tier resources)
- Console: Ubuntu 22.04 (amd64)

## PREPARING UBUNTU LINUX CONSOLE
Let's prepare our Ubuntu 22.04 box to install all required software and dependencies using Ansible as configuration tool. It's assumed operating system is fully fresh installed and ready to use prior to start this lab.

```
sudo apt install ansible git
git clone git@github.com:pabonwalt/devops-stupidly-simple.git
ansible-playbook devops-stupidly-simple/ansible-deploy-console/playbook.yml -K
```

## SOME GIT COMMANDS

Configure git global parameters:
```
git config --global user.name "Walter Pabon"
git config --global user.email "walter@centre"
```

Use following commands to make changes:
```
git add .
git commit -m "adding improvements"
git push -u origin main
```

