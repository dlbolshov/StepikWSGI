def hello(environ, start_response):
    data = "\n".join(environ.get('QUERY_STRING').split("&"))
    status = '200 OK'
    response_headers = [
        ('Content-type', 'text/plain'),
    ]
    start_response(status, response_headers)
    return [data.encode('utf-8')]