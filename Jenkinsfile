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
	        def projects = readJSON file: "newone.json"
		      println(props['PreStrategyIntegration_tmp'].keySet())
		    }
                
              }
          }
     }

}
