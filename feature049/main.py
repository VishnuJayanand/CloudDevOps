#Import Necessary Libraries
#import paramiko
import fabric
import invoke

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
#connection.run('cat ~/.ssh/authorized_keys')



