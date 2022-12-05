node {
  stage("Clone the project") {
    git credentialsId: '7b473a1e-33ed-4ac7-89d3-e9c7f50fc19c', branch: 'main', url: 'https://github.com/pabonwalt/devops-stupidly-simple.git'
  }

  stage("Build") {
    stage("Building jar") {
      dir("springboot-webapp") {
        sh "./mvnw package"
	}
      }
    }
}
