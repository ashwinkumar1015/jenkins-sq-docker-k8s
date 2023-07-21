pipeline{
	agent any
	stage('docker push'){
    	environment {     
      		DOCKERHUB_CREDENTIALS= credentials('docker_login')     
    	}
    	steps{  
      		sh('ls')
	    	sh ('echo $DOCKERHUB_CREDENTIALS_PSW | sudo docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin')
	    	echo 'Login Completed'
			sh ('sleep 20')
      		sh('docker logout')
    	}
  	}
}
