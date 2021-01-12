#Import Necessary Libraries
#import paramiko
import fabric
from invoke import Responder

host = "server.local"
port = 22
username = "admin"
password = "admin"

connection = fabric.Connection(host=host, port=22, user=username, connect_kwargs={'password': password})
#print("connection succeeded")
#connection.run("pwd")

final_key = "ssh-rsa " + open('public_key.pub').read()
connection.run('mkdir -p ~/.ssh/')
connection.run('echo "%s" > ~/.ssh/authorized_keys' % final_key)


#allow necessary permissions
connection.run('chmod 600 ~/.ssh/*')
connection.run('chmod 700 ~/.ssh/')

#passwordless sudo
#connection.run('echo "admin ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers')
pass = Responder(pattern = r'\[sudo\] password:', response = 'admin\n')
connection.run('echo "admin ALL=(ALL) NOPASSWD: ALL" | sudo EDITOR="tee -a" visudo', pty = True, watchers=[pass])