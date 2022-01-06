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
	               def projects = readJSON file: "samplefile.json"
		               value = "${projects.PreStrategyIntegration.PreStrategyIntegration_tmp"
					   print (value)
		    }
                
              }
          }
     }

}
