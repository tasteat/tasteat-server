# Sample backend for the [recipes app](https://github.com/tasteat/tasteat-app)

### Steps to run the server
1. `git clone https://github.com/tasteat/tasteat-server && cd tasteat-server`
2. `virtualenv env`
3. `. env/bin/activate`
4. `pip install -r requirements.txt`
5. `python tasteat/app.py`

You can set the environment variable `TASTEAT_CONFIG` to one of the values:
 - `development` (default if not set)
 - `production`

Then you can edit the config file `development.cfg` or `production.cfg` inside the `config` directory. The file that will be used is pointed by the value of the `TASTEAT_CONFIG` variable.

