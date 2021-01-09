#Import Necessary Libraries
import paramiko
import fabric
import invoke

host = "server.local"
port = 22
username = "admin"
password = "admin"

ssh_client = paramiko.SSHClient()
ssh_client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh_client.connect(hostname=host,port = port, username = username, password = password)


