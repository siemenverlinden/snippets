[[snippets]]
```Bash
#login to varnish server

#clear all
sudo systemctl restart varnish

#clear specific url
varnishadm -T 127.0.0.1:6082 -S /etc/varnish/secret "ban req.http.host == www.example.com && req.url == /en_US/robots.txt"

```

