pipeline {
	agent any
	stages {
		stage ('Building Application') {
			steps {
				sh 'mvn clean package'
			}
			post {
				success {
					echo "Now Archiving the Atrifacts..."
					archiveArtifacts artifacts: '**/*.war'
				}
			}
		}
	}
}	
	