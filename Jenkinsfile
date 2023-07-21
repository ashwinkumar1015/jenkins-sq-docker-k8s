node {
  stage('git clone') {
    git branch: 'main', url: 'https://github.com/ashwinkumar1015/jenkins-sq-docker-k8s.git'
    sh ('ls')
  }
  stage('SonarQube Analysis') {
    def scannerHome = tool 'sonarqube';
    withSonarQubeEnv(credentialsId: 'sonarqube', installationName: 'sonarqube'){
      sh "${scannerHome}/bin/sonar-scanner"
    }
  }
  stage('docker build'){
    sh('docker version')
    sh('pwd')
    sh('ls')
    sh('docker rmi $(docker images -q)')
    sh('docker build -t ashwinkumar1015/simple-app .')
  }
  stage('docker push'){
    environment {     
      DOCKERHUB_CREDENTIALS= credentials('docker_login')     
    }
    steps{  
      sh('ls')
	    sh ('echo $DOCKERHUB_CREDENTIALS_PSW | sudo docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin')
	    echo 'Login Completed'
      sh('docker push ashwinkumar1015/simple-app')
      sh('docker logout')
    }
  }
  stage('k8s cmds'){
    sh('ls')
    sh('kubectl version --client -o yaml')
    sh('kubectl apply -f ns-nginx.yaml')
    sh('kubectl get all -n nginx')
  }
}
