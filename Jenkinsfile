node {
  stage('SCM') {
    checkout scm
  }
  stage('SonarQube Analysis') {
    def scannerHome = tool 'SonarDocker';
    withSonarQubeEnv() {
      sh "/var/jenkins_home/sonar-scanner-4.7.0.2747-linux/bin/sonar-scanner"
    }
  }
}