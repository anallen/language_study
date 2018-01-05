#!/usr/bin/env python3
import socketserver

class Myserver(socketserver.BaseRequestHandler):
    def handle(self):
        conn = self.request
        conn.sendall(bytes("hello, i am a robot", encoding="utf-8"))
        while True:
            ret_bytes = conn.rev(1024)
            ret_str = str(ret_bytes, encoding="utf-8")
            if ret_str == "q":
                break
            conn.sendall(bytes(ret_str+"大家好a", encoding="utf-8")

if __name__ == "__main__":
	server = socketserver.ThreadingTCPServer(("127.0.0.1", 8080), Myserver)
	server.serve_forever()
