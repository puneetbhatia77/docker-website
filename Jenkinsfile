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
             docker.withRegistry('https://registry.hub.docker.com', 'git') 
            {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
             }   
      }
   
   }

  }
}
