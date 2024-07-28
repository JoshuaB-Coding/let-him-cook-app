import http.server
import socketserver

PORT = 5000
Handler = http.server.SimpleHTTPRequestHandler

if __name__ == '__main__':
    with socketserver.TCPServer(('127.0.0.1', PORT), Handler) as httpd:
        print('Serving at port', PORT)
        httpd.serve_forever()


