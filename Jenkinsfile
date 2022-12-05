pipeline {
environment {
registryCredential = "docker"
}
agent any
stages {
stage('Build') {
    steps{
    script {
        sh 'git clone git@github.com:pabonwalt/devops-stupidly-simple.git'
	sh 'cd devops-stupidly-simple/springboot-webapp'
        sh './mvnw clean install'
    }
    }
}
}
}
