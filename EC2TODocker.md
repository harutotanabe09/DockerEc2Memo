### EC2からDokcerをはじめる

```sh

sudo yum update -y
sudo yum install -y docker
sudo yum install -y git
sudo service docker start
sudo usermod -a -G docker ec2-user
cat /etc/group |grep docker

exit

docker info

sudo curl -L "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

docker-compose --version
 
docker run --name mynginx1 -p 80:80 -d nginx

```

composeから入るBash

```
docker-compose exec web bash
```

sshでGitコマンド

ssh-keygen -t rsa

１回目の質問で名前指定 gitkey

cat ~/.ssh/id_rsa.pub
↓
Githubに貼り付け

ssh -T git@github.com

