import requests
import json

url = "https://accounts.csez.zohocorpin.com/oauth/v2/token"
http_proxy  = None
https_proxy = None
client_id="1000.2Q6MSN9KDRTQ035161AUA2E7HMDZUC"
redirect_uri="https://www.getpostman.com/oauth2/callback"
#code="1000.84047b394a5996706b0cfe3073f611c6.99af7566c4931e2102ef0a71d05ec5fe"
code = input("Code : ")
client_secret="c3f96ea9134cb342271f92dd21ac61f94203cb4c67"
grant_type="authorization_code"
data = {'client_id':client_id,'client_secret':client_secret,'redirect_uri':redirect_uri,'code':code,'grant_type':grant_type}
proxies = {"http" : http_proxy,"https" : https_proxy}
r = requests.post(url = url, data = data, proxies = proxies)
response = r.text
responseJson = json.loads(response)
global refresh_token
if 'refresh_token' in responseJson:
    refresh_token = responseJson["refresh_token"]
if 'access_token' in responseJson:
    print("response : "+responseJson["access_token"])
elif 'error' in responseJson:
    print("response : "+responseJson["error"])
else:
    print("response : "+response)
