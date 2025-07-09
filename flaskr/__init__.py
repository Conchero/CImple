import os

from flask import Flask

def create_app(test_config = None):
    # create and configure the app
    app = Flask(__name__, instance_relative_config=True)
    PROJECT_ROOT = os.path.dirname(os.path.realpath(__file__))
    print(PROJECT_ROOT)
    app.instance_path = os.path.join(PROJECT_ROOT,"data")
    database_path = os.path.join(app.instance_path, 'flaskr.sqlite')
    app.config.from_mapping(
        SECRET_KEY='dev',
        DATABASE= database_path,
    )

    if test_config is None:
        # load rhe instance config if it exist when not testing
        app.config.from_pyfile('config.py',silent=True)
    else:
        #load the test config if passed in 
        app.config.from_mapping(test_config)

        #ensure the instance folder exists
        try: 
            os.makedirs(app.instance_path)
        except OSError:
            pass
    

    # @app.route("/")
    # def index():
    #     return "<h1>Hello!</h1>"

    
    from . import db
    db.init_app(app)
    
    from . import auth
    app.register_blueprint(auth.bp)
    
    from . import blog
    app.register_blueprint(blog.bp)
    app.add_url_rule('/', endpoint='index')

    return app
