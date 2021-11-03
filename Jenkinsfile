pipeline {
  agent any
  environment {
		DOCKERHUB_CREDENTIALS=credentials('dockerhub')
	}
 stages {
      stage('Cloning Git') {
        steps{
          git 'https://github.com/saurabhgore-code/SaurabhSimplilearnProject.git'
             }
           }
       stage('Building Image') {
         steps{
            script{
             sh 'docker build -t go-image /root'
             }
         }
        }
  stage('login dockerhub'){
    steps{ 
      sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
         }
  }
       stage('Deploy Image') {
          steps{
            script{
              
              sh 'docker tag go-image saurabhgore70/my-private-repo:v2'
              sh 'docker push saurabhgore70/my-private-repo:v2'
            }
          }
           }

  }
}
