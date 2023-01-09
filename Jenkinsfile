node {
  stage('SCM') {
    checkout scm
  }
  stage('lista') {
    sh "rm -f /Tomcat/index.jsp"
    sh "rm -f /FAMSA/sample/index.jsp"
    sh "cp -i /var/jenkins_home/workspace/Calculadorapipe/index.jsp /Tomcat/index.jsp"
    sh "cp -i /var/jenkins_home/workspace/Calculadorapipe/index.jsp /FAMSA/sample/index.jsp"
  }
  stage('SonarQube Analysis') {
    def scannerHome = tool 'SonarDocker';
    withSonarQubeEnv() {
      sh "/var/jenkins_home/sonar-scanner-4.7.0.2747-linux/bin/sonar-scanner"
    }
  }
}