from db import db


class Recipes(object):
    def __init__(self):
        self._founds = []
        self._not_founds = []
        self._extracted_ingredients = []

        self._ingredients = []
        self._fulltext = ''

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
    def fulltext(self):
        return self._fulltext

    @fulltext.setter
    def fulltext(self, value):
        if value is None:
            value = ''
        elif not isinstance(value, str) and not isinstance(value, unicode):
            raise Exception('fullText must be a string (got %s)' % type(value))
        self._fulltext = value

    def get_recipes(self):
        self._get_ingredient_ids()

        sql = self._get_sql()
        res = db.query(sql)
        recipes = []
        for row in res:
            recipes.append(row)
        return recipes

    def _get_sql(self):
        intersect_sql = self._get_intersect_sql()
        sql =\
            'select a.title, a.servings, a.total_time\
            from   recipe a\
            where  a.id in (\
            {}\
            )'.format(intersect_sql)
        return sql

    def _get_intersect_sql(self):
        intersect_sql = ''

        for ingredient in self._founds:
            if intersect_sql != '':
                intersect_sql += '\nintersect\n'
            intersect_sql += 'select recipe_id from recipe_ingredients where ingredient_id = {}'.format(ingredient)

        return intersect_sql

    def _extract_ingredients(self):
        return self._fulltext.split()

    def _get_ingredient_ids(self):
        total_ingredients = self._extract_ingredients() + self._ingredients

        for ingredient in total_ingredients:
            res = db.query(u'select id from ingredient where name = "{}" COLLATE NOCASE'.format(ingredient))
            found = None
            for row in res:
                found = row['id']
                break
            if found is None:
                self._not_founds.append(ingredient)
            else:
                self._founds.append(found)
