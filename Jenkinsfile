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
			script{
				withCredentials([string(credentialsId: 'docker_pwd', variable: 'DOCKER_PWD')]) {
	      			sh('ls')
					sh('docker login -u ashwinkumar1015 -p ${DOCKER_PWD}')
				}
				sh ('docker push ashwinkumar1015/simple-app ')
				echo ('push completed')
				sh ('sleep 20')
      			sh('docker logout')
			}
    	}
  stage('k8s cmds'){
	  withKubeConfig(caCertificate: '', clusterName: '', contextName: '', credentialsId: 'k8s', namespace: '', restrictKubeConfigAccess: false, serverUrl: '') {
    sh('ls')
    sh('kubectl version --client -o yaml')
    sh('kubectl apply -f ns-nginx.yaml')
    sh('kubectl get all -n nginx')
	  }
  }
}
