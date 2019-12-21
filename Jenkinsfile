pipeline {
	agent any
	stages {
		stage ('Building Application') {
			steps {
				sh 'mvn clean package'
			}
			post {
				success {
					echo "Now Archiving the Artifacts..."
					archiveArtifacts artifacts: '**/*.war'
				}
			}
		}
		stage ('create Tomcat docker image') {
			steps {
				sh "docker build . -t tomcatsamplewebapp:${evn.BUILD_ID}""
			}
		}
	}
}	
	