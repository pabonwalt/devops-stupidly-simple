# DEVOPS STUPIDLY SIMPLE
All my notes about my job transition.

## GOAL
To deploy a fully automated Java webapp in Amazon EKS using most common DevOps tools.

## RESOURCES AND TOOLS REQUIRED
- Infraestructure: Terraform
- CI/CD: Jenkins
- Code and config repo: Github
- Installation and configuration: Ansible
- Containers: Docker
- Reliability: Kubernetes
- Cloud platform: Amazon AWS
- Deployment server: Ubuntu 22.04 (amd64)

## PREPARING DEPLOYMENT SERVER
Let's prepare our deployment server to install all required software (terraform, docker, jenkins, kubectl, awscli) and dependencies using Ansible as configuration tool. It's assumed operating system is fully fresh installed and ready to use prior to start this lab.

```
sudo apt install ansible git
git clone git@github.com:pabonwalt/devops-stupidly-simple.git
ansible-playbook devops-stupidly-simple/ansible-deploy-CICD-tools.yml -K
```

## DEPLOYING CLOUD INFRAESTRUCTURE
We are going to use Terraform to deploy an AWS EKS cluster, it's assumed you have created a programatic user with all required IAM permissions, AWS credentials need to be set as following from terminal, replace information by yours:

```
aws configure
AWS Access Key ID [********************]: 
AWS Secret Access Key [********************]: 
Default region name [us-east-1]: 
Default output format [json]: 
```

Now lets build our cloud AWS EKS infraestructure, a very basic EKS cluster will be created as result, for testing purposes only.
```
cd devops-stupidly-simple ; terraform apply -auto-approve
```

## SOME GIT COMMANDS

Configure git global parameters:
```
git config --global user.name "Walter Pabon"
git config --global user.email "walter@centre"
```

Use following commands to push changes:
```
git add .
git commit -m "adding improvements"
git push
```

