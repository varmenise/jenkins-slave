FROM varmenise/docker-ssh-slave
MAINTAINER valentina armenise, valentina.armenise@gmail.com

# Create Jenkins user
RUN useradd jenkins
RUN echo "jenkins:jenkins" | chpasswd


# Make directories for [masters] JENKINS_HOME, jenkins.war lib and [slaves] remote FS root, ssh privilege separation directory
RUN mkdir /usr/lib/jenkins /var/lib/jenkins /home/jenkins

# Set permissions
RUN chown -R jenkins:jenkins /usr/lib/jenkins /var/lib/jenkins /home/jenkins


