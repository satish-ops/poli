pipeline{
     agent any
     stages{
          stage('Stage 1'){
              steps{
                  echo 'hello'
		      script {
			      bat 'download.bat'
		      }
              }
          }
          stage('Stage 2'){
              steps{
		    script{
			    // trying to read json file
	               def  Projects = readJSON file: "samplefile.json" 
					   for (int i = 0; i <= 2; i++){
						   //we are trying to get the file path defined to groovy through for loop
					       value = "${Projects.PreStrategyIntegration.PreStrategyIntegration_tmp[0][i]}"
					       String[] type = value.split('\\.')  //trying to split the array using dot value
					       String[] parts = value.split('/') //trying to Split windows path of array.
					       println(type.last()) //which get last element
					       println(parts[-1]) //which get filename alone from the path of the file
					       ext = type.last()
					       love = (parts[-1])
					           	nexusArtifactUploader artifacts: [[artifactId: '', classifier: '', file: value, type: ext]], credentialsId: 'come-on', groupId: value, nexusUrl: '19.199.136.133:8081/', nexusVersion: 'nexus3', protocol: 'http', repository: 'devops', version: ''

					   }
		    }
                
              }
          }
     }

}
