pipeline {
environment {
registryCredential = "docker"
}
agent any
stages {
stage(‘Build’) {
    steps{
    script {
        sh 'mvn clean install'
    }
    }
}
}
}
