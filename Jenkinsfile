pipeline {
  environment {
    registry = 'saurabhgore70/apache-image'
    registryCredential = 'saurabhgore70'
    dockerImage = ''
}
  agent any
stages {
      stage('Cloning Git') {
        steps{
          git 'https://github.com/saurabhgore-code/SaurabhSimplilearnProject.git'
             }
           }
       stage('Building Image') {
         steps{
            script{
             sh 'docker build -t apache-image /home/billion/all-dockerfiles'
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
