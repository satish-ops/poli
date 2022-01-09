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
		    script{
	               def  Projects = readJSON file: "samplefile.json"
	                    //value = "${Projects.PreStrategyIntegration.PreStrategyIntegration_tmp[0][0]}"
					   //print (value)
					   for (int i = 0; i <= 12; i++){
					       value = "${Projects.PreStrategyIntegration.PreStrategyIntegration_tmp[0][i]}"
					       print(value)
					       String[] type = value.split('\\.')
					       print(type.last())
					       ext = type.last()
					       if(i%2 == 0){
					           	nexusArtifactUploader artifacts: [[artifactId: value, classifier: '', file: value, type: ext]], credentialsId: 'come-on', groupId: 'hello', nexusUrl: '19.199.136.133:8081/', nexusVersion: 'nexus3', protocol: 'http', repository: 'sample', version: '2.0.0'

					       } else {
					           nexusArtifactUploader artifacts: [[artifactId: value, classifier: '', file: value, type: ext]], credentialsId: 'come-on', groupId: 'hello', nexusUrl: '19.199.136.133:8081/', nexusVersion: 'nexus3', protocol: 'http', repository: 'sample', version: '2.0.0'
					       }
					   }
		    }
                
              }
          }
     }

}
