from db import db


class Recipe_info(object):
    def __init__(self):
        self._ingredients = []

        self._lang = ''

    @property
    def recipe_id(self):
        return self._recipe_id

    @recipe_id.setter
    def recipe_id(self, value):        
        if value is None:
            value = 0
        self._recipe_id = int(value)

    @property
    def ingredients(self):
        return self._ingredients

    @ingredients.setter
    def ingredients(self, value):
        if value is None:
            value = []
        elif not isinstance(value, list):
            raise Exception('ingredients must be a list (got %s)' % type(value))
        self._ingredients = value

    @property
    def directions(self):
        return self._directions

    @directions.setter
    def directions(self, value):
        if value is None:
            value = ''
        elif not isinstance(value, str) and not isinstance(value, unicode):
            raise Exception('directions must be a string (got %s)' % type(value))
        self._directions = value

    @property
    def lang(self):
        return self._lang

    @lang.setter
    def lang(self, value):
        if value is None:
            value = ''
        elif not isinstance(value, str) and not isinstance(value, unicode):
            raise Exception('lang must be a string (got %s)' % type(value))
        self._lang = value

    def get_ingredients(self):
        recipe_table = 'recipe';

        sql = 'select it.name as name, ut.name as unit, qty from recipe as r inner join recipe_ingredients as ing on r.id = ing.recipe_id inner join ingredient_translation as it on ing.ingredient_id = it.ingredient_id and r.lang = it.lang inner join unit_translation as ut on ing.unit_id = ut.unit_id and r.lang = ut.lang where id = {recipe_id}'.format(recipe_id=self.recipe_id);
        res = db.query(sql)
        for row in res:
            self.ingredients.append(row)

    def get_directions(self):
        sql = 'select directions from recipe where id = {recipe_id}'.format(recipe_id=self.recipe_id)
        res = db.query(sql)
        self.directions = res.next()['directions']
