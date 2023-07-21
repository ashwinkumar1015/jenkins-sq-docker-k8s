pipeline{
	agent any
	stages{
		stage('docker push'){
    		environment {     
      			DOCKERHUB_CREDENTIALS= credentials('docker_login')     
    		}
    		steps{  
	      		sh('ls')
	    		sh ('sudo docker login -u ashwinkumar1015 -p $DOCKERHUB_CREDENTIALS -S')
	    		echo 'Login Completed'
			sh ('sleep 20')
      			sh('docker logout')
    		}
  		}
	}
}
