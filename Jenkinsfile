pipeline{
	agent any
	stages{
		stage('docker push'){
    		environment {     
      			DOCKERHUB_CREDENTIALS= credentials('docker_login')     
    		}
    		steps{  
	      		sh('ls')
	    		sh ('echo $DOCKERHUB_CREDENTIALS | sudo docker login -u ashwinkumar1015 --password-stdin')
	    		echo 'Login Completed'
			sh ('sleep 20')
      			sh('docker logout')
    		}
  		}
	}
}
