import falcon


class HelloWorld(object):
    def on_get(self, req, resp):
        """Handles GET requests"""
        resp.status = falcon.HTTP_200  # This is the default status
        resp.body = f'Hello coontinusous world'

# falcon.API instances are callable WSGI apps
app = falcon.API()

# Resources are represented by long-lived class instances
app.add_route('/hello', HelloWorld())
