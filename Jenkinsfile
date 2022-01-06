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
	        def projects = readJSON file: "newone.json"
		      println "projects"
                
              }
          }
     }

}
