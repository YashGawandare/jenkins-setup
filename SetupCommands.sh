

# Step 1: Update all system packages ehh

sudo yum update -y

# Step 2: Install Git, Java 8, and Maven
sudo yum install git java-1.8.0-openjdk maven -y

# Step 3: Add the Jenkins repository to YUM
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

# Step 4: Import the Jenkins GPG key
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# Step 5: Upgrade all packages (optional but recommended)
sudo yum upgrade -y

# Step 6: Install Java 17 (needed for newer Jenkins versions)
sudo yum install java-17-amazon-corretto -y

# Step 7: Install Jenkins
sudo yum install jenkins -y

# Step 8: Enable Jenkins to start on boot
sudo systemctl enable jenkins

# Step 9: Start the Jenkins service
sudo systemctl start jenkins

# Step 10: Check Jenkins service status
sudo systemctl status jenkins
