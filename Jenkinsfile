pipeline {
environment {
  registryCredential = "docker"
  }
agent any
stages {
  stage 'Clone the project'
  git credentialsId: '7b473a1e-33ed-4ac7-89d3-e9c7f50fc19c',
    branch: 'main',
    url: 'https://github.com/eugenp/tutorials.git'
  dir('springboot-webapp') {
    stage("Compilation and Analysis") {
      parallel 'Compilation': {
        sh "./mvnw clean install -DskipTests"
}
}
}
}
}
