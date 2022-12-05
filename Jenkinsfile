pipeline {
environment {
registryCredential = "docker"
}
agent any
stages {
stage('Maven Install') {
    agent {
        docker {
	    image 'maven:3.5.0'
        }
    }
stage('Build') {
    steps{
    script {
        sh 'mvn clean install'
    }
    }
}
}
}
