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

Set required global git parameters (only once)
```
git config --global user.name "Walter Pabon"
git config --global user.email "walter@tcentre"
```

Install ansible, git and clone repo, ansible-playbook command will ask for your sudo password:
```
sudo apt install ansible git
git clone https://github.com/pabonwalt/devops-stupidly-simple.git
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

Test your AWS credentials from CLI:
```
aws sts get-caller-identity
```

Now lets build our cloud AWS EKS infraestructure, a very basic EKS cluster will be created as result, for testing purposes only.
```
cd devops-stupidly-simple
terraform init
terraform apply -auto-approve
```

## CONFIGURE JENKINS AND CREATE EXAMPLE PIPELINE
1. After Jenkins was installed by Ansible, we need to configure it accesing to http://127.0.0.1:8080 and entering Jenkins default admin password (it's as part of the ansible-playbook output)
2. We need to install some required plugins: Pipeline, Docker Pipeline, Kubernetes CLI, Git.
3. We need to configure some global credentials in order to connect to github and docker hub.
4. We need to call our first pipeline stored in github.

## SOME GIT COMMANDS
Use following commands to push changes:
```
git add .
git commit -m "adding improvements"
git push
```

Use following commands to create a new branch:
```
git checkout -b fix123
git commit -m "adding improvements"
git push
```

