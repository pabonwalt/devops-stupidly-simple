pipeline {
environment {
registryCredential = "docker"
}
agent any
stages {
stage('Build') {
    steps{
    script {
	git credentialsId: '7b473a1e-33ed-4ac7-89d3-e9c7f50fc19c', url: 'https://github.com/pabonwalt/devops-stupidly-simple.git, branch: 'main'
	sh 'cd devops-stupidly-simple/springboot-webapp'
        sh './mvnw package'
    }
    }
}
}
}
