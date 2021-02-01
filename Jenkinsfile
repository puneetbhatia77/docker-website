pipeline {
  environment {
    registry = 'saurabhgore65/app-image'
    registryCredential = 'sagoredockerid'
    dockerImage = ''
}
  agent any
stages {
      stage('Cloning Git') {
        steps{
          git 'https://github.com/saurabhgore-code/docker-website.git'
             }
           }
       stage('Building Image') {
         steps{
            script{
             dockerImage = docker.build registry + ":$BUILD_NUMBER"
             }
         }
        }
       stage('Deploy Image') {
          steps{
             script{
                 docker.withRegistry( '', registryCredential ) {
               dockerImage.push()  
                }
            }
      }
   
   }

  }
}
