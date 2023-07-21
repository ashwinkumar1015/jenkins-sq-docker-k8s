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
  stage('k8s cmds'){
    sh('kubectl version --client -o yaml')
  }
}
