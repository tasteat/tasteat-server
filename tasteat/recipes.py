from db import db


class Recipes(object):
    def __init__(self):
        self._founds = []
        self._not_founds = []
        self._extracted_ingredients = []

        self._ingredients = []
        self._fulltext = ''
        self._lang = ''

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

    def get_recipes(self):
        self._get_ingredient_ids()

        sql = self._get_sql()
        res = db.query(sql)
        recipes = []
        for row in res:
            recipes.append(row)
        return recipes

    def _get_sql(self):
        tables, join = self._get_joins()
        lang = 'and a.lang = "{}"'.format(self.lang) if self.lang else ''
        sql =\
            'select a.id, a.title, a.servings, a.total_time, a.category_id as category\
            from   recipe a{}\
            where  1 = 1\
            {}\
            {}\
            '.format(tables, lang, join)
        return sql

    def _get_joins(self):
        letter_num = ord('b')
        join = ''
        tables = ''
        for ingredient in self._founds:
            letter = chr(letter_num)
            join += 'and {}.recipe_id = a.id and {}.ingredient_id = {}\n'.format(letter, letter, ingredient)
            tables += ', recipe_ingredients {}'.format(letter)
            letter_num += 1
        return tables, join

    def _extract_ingredients(self):
        return self._fulltext.split()

    def _get_ingredient_ids(self):
        total_ingredients = self._extract_ingredients() + self._ingredients
        lang = 'and lang = "{}"'.format(self.lang) if self.lang else ''

        for ingredient in total_ingredients:
            sql = u'select ingredient_id from ingredient_translation where name = "{}" {}'.format(ingredient, lang)
            res = db.query(sql)
            found = None
            for row in res:
                found = row['ingredient_id']
                break
            if found is None:
                self._not_founds.append(ingredient)
            else:
                self._founds.append(found)
