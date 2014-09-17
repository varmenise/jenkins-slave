FROM varmenise/jenkins-base
MAINTAINER Andy Pemberton <apemberton@cloudbees.com>

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
