node {

  stage("Clone the project") {
    git credentialsId: '7b473a1e-33ed-4ac7-89d3-e9c7f50fc19c', branch: 'main', url: 'https://github.com/pabonwalt/devops-stupidly-simple.git'
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
    withDockerRegistry([ credentialsId: "dockerhub-access", url: "" ]) {
      dockerImage.push()
    }
  }

  stage('Deploy') {
    withKubeConfig([credentialsId: 'kubernetes-login',
                    serverUrl: 'https://977490BF7EF588E545EA0A2CBEB8F388.gr7.us-east-1.eks.amazonaws.com',
		    clusterName: 'arn:aws:eks:us-east-1:437889535746:cluster/cluster1']) {
      sh 'kubectl apply -f springboot-webapp-k8s-deploy.yml'
    }
  }

}
