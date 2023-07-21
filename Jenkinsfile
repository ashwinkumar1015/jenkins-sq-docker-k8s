pipeline{
	agent any
	stages{
		stage('docker push'){
    		environment {     
      			DOCKERHUB_CREDENTIALS= credentials('docker_login')     
    		}
    		steps{
			withCredentials([usernamePassword(credentialsId: 'docker-cred', passwordVariable: 'DOCKER_PASS', usernameVariable: 'DOCKER_USER')]) {
	      		sh('ls')
	    		echo 'Login Completed'
			sh ('docker push ashwinkumar1015/simple-app')
			sh ('push completed')
			sh ('sleep 20')
      			sh('docker logout')
			}
    		}
  		}
	}
}
