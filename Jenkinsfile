node {

  stage("Clone the project") {
    git credentialsId: 'github-secrets', branch: 'main', url: 'https://github.com/pabonwalt/devops-stupidly-simple.git'
  }

  stage("Building jar") {
    dir("springboot-webapp") {
      sh "./mvnw package"
    }
  }

  stage('Building and deploying image') {
      dockerImage = docker.build("pabonwalt/springboot-webapp:latest")
  }

  stage('Push image') {
    withDockerRegistry([ credentialsId: "dockerhub-secrets", url: "" ]) {
      dockerImage.push()
    }
  }

  stage('Deploy') {
    withKubeConfig([credentialsId: 'kubernetes-secrets',
                    serverUrl: 'https://192.168.0.2:16443',
		    clusterName: 'kubernetes']) {
      sh 'kubectl apply -f springboot-webapp-k8s-deploy.yml'
    }
  }

}
