pipeline{
     agent any
     stages{
          stage('Stage 1'){
              steps{
                //Perform steps related to this stage
                  echo 'hello'
              }
          }
          stage('Stage 2'){
              steps{
				  nexusArtifactUploader artifacts: [
   [artifactId: 'devops', classifier: '', file: 'rahul.txt', type: 'txt'], 
   [artifactId: 'devops', classifier: '', file: 'kill.zip', type: 'zip']
], 
credentialsId: 'come-on', 
groupId: 'admin', 
nexusUrl: '19.199.136.133:8080/', 
nexusVersion: 'nexus3', 
protocol: 'http', 
repository: 'devops', 
version: '2.4.4'
                
              }
          }
     }

}
