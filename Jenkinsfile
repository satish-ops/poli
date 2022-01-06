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
					       nexusArtifactUploader artifacts: [[artifactId: 'rahul', classifier: '', file: value, type: 'txt']], credentialsId: 'come-on', groupId: 'hello', nexusUrl: '19.199.136.133:8081/', nexusVersion: 'nexus3', protocol: 'http', repository: 'new', version: '2.0.0'
					   }
		    }
                
              }
          }
     }

}
