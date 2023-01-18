FROM jenkins/jenkins:lts-jdk11
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV CASC_JENKINS_CONFIG /var/jenkins_home/jenkins.yml
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
COPY jenkins.yml /var/jenkins_home/jenkins.yml
# COPY seedjob.groovy /usr/local/seedjob.groovy
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
