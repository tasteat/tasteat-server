from flask import Flask, jsonify, request
from recipes import Recipes

app = Flask("tasteat")


@app.route("/")
def hello_world():
    return "Hello World! <strong>I am learning Flask</strong>", 200


@app.route("/api/recipes")
def api_get_recipes():
    ingredients = request.args.getlist('ingredients')
    recipes = Recipes(ingredients)
    return jsonify(recipes=recipes.get_recipes(), not_found=recipes.not_founds), 200


if __name__ == "__main__":
    app.run(debug=True, use_reloader=True)
