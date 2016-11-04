import os
from flask import Flask, jsonify, request
from flask_cors import CORS
from recipes import Recipes
from filters import Filters
from db import db

app = Flask("tasteat")

config_name = os.environ.get('TASTEAT_CONFIG', 'development')
cfg = os.path.join(os.getcwd(), 'config', config_name + '.cfg')
app.config.from_pyfile(cfg, silent=False)

db.init_app(app)

CORS(app)


@app.route("/")
def hello_world():
    return "Hello World! <strong>I am learning Flask</strong>", 200


@app.route("/api/recipes")
def api_get_recipes():
    recipes = Recipes()
    recipes.ingredients = request.args.getlist('ingredients')
    recipes.fulltext = request.args.get('fullText')
    recipes.lang = request.args.get('lang')
    return jsonify(recipes=recipes.get_recipes(), not_found=recipes._not_founds), 200


@app.route("/api/filters")
def api_get_filters():
    filters = Filters()
    filters.lang = request.args.get('lang')
    recipe_categories = filters.get_recipe_categories()
    total_time_categories = filters.get_total_time_categories()
    return jsonify(recipe_categories=recipe_categories, total_time_categories=total_time_categories), 200


if __name__ == "__main__":
    app.run(host=app.config['HOST'])
