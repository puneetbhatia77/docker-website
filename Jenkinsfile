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
             sh 'docker build -t python-image /home/billion/dockerfiles'
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
              
              sh 'docker tag python-image saurabhgore70/python-image:v1'
              sh 'docker push saurabhgore70/python-image:v1'
            }
          }
           }

  }
}
