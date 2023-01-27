#!/bin/bash
echo "Runnng on http port: $HTTP_PORT"
echo '<html><head><title>HTTP Hello World</title></head><body><h1>Hello from '$(hostname)'</h1></body></html' > /www/index.html

python -m SimpleHTTPServer $HTTP_PORT
