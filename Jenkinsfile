pipeline {
environment {
registryCredential = "docker"
}
agent any
stages {
stage('Build') {
    steps{
    script {
	git branch: 'main',
	    credentialsId: '7b473a1e-33ed-4ac7-89d3-e9c7f50fc19c',
	    url: 'https://github.com/pabonwalt/devops-stupidly-simple.git'
	sh 'cd springboot-webapp'
        sh './mvnw package'
    }
    }
}
}
}
