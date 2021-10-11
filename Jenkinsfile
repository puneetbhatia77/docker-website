pipeline {
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
              sh 'docker tag apache-image saurabhgore70/apache-image:v1'
              sh 'docker push saurabhgore70/apache-image:v1'
            }
          }
           
   }

  }
}
