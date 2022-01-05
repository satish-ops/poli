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
	        nexusArtifactUploader artifacts: [[artifactId: 'rahul', classifier: '', file: 'rahul.txt', type: 'txt']], credentialsId: 'come-on', groupId: 'hello', nexusUrl: '19.199.136.133:8081/', nexusVersion: 'nexus3', protocol: 'http', repository: 'devops', version: '1.0.0'
                
              }
          }
     }

}
