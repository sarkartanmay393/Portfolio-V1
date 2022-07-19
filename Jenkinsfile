pipeline {

	agent { docker { image 'cirrusci/flutter:latest' } }
	stages {
		stage ('Build'){
			steps {
				sh 'flutter version'
				echo 'its running.'
			}
		}			
	}
}
