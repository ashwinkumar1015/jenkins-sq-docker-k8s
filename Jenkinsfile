pipeline{
	agent any
	stages{
		stage('docker push'){
    		steps{
				script{
					withCredentials([string(credentialsId: 'docker_pwd', variable: 'DOCKER_PWD')]) {
	      				sh('ls')
						sh('docker login -u ashwinkumar1015 -p ${DOCKER_PWD}')
					}
					sh ('docker push ashwinkumar1015/simple-app ')
					sh ('push completed')
					sh ('sleep 20')
      				sh('docker logout')
				}
    		}
  		}
	}
}
