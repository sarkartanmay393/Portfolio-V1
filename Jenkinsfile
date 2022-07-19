pipeline {

	agent { docker { image 'cirrusci/flutter:latest' } }
	stages {
	v	stage ('Build'){
			steps {
				sh 'flutter version'
				echo 'its running.'
			}
		}			
	}
}
