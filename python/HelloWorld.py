#!/usr/bin/env python

from http.server import BaseHTTPRequestHandler, HTTPServer

PORT = 24002

class handler(BaseHTTPRequestHandler):

    def do_GET(self):
        self.send_response(200)
        self.send_header('Content-type','text/html')
        self.end_headers()
        self.wfile.write("hello world from python!!".encode())
        return

try:
    server = HTTPServer(('', PORT), handler)
    server.serve_forever()

except KeyboardInterrupt:
    server.socket.close()
