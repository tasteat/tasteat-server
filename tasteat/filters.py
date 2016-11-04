from db import db


class Filters(object):
    def __init__(self):
        self._recipe_categories = []
        self._total_time_categories = []

        self._lang = ''

    @property
    def recipe_categories(self):
        return self._recipe_categories

    @recipe_categories.setter
    def recipe_categories(self, value):
        if value is None:
            value = []
        elif not isinstance(value, list):
            raise Exception('recipe_categories must be a list (got %s)' % type(value))
        self._recipe_categories = value

    @property
    def total_time_categories(self):
        return self._recipe_categories

    @total_time_categories.setter
    def total_time_categories(self, value):
        if value is None:
            value = []
        elif not isinstance(value, list):
            raise Exception('total_time_categories must be a list (got %s)' % type(value))
        self._total_time_categories = value

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

    def get_recipe_categories(self):
        sql = 'select id, name, false as selected from recipe_category inner join recipe_category_translation on recipe_category.id = recipe_category_translation.category_id where lang = "{lang}"'.format(lang=self.lang)
        res = db.query(sql)
        recipe_categories = []
        for row in res:
            recipe_categories.append(row)
        return recipe_categories

    def get_total_time_categories(self):
        sql = 'select id, name, min, max, false as selected from total_time_category inner join total_time_category_translation on total_time_category.id = total_time_category_translation.category_id where lang = "{lang}"'.format(lang=self.lang)
        res = db.query(sql)
        total_time_categories = []
        for row in res:
            total_time_categories.append(row)
        return total_time_categories
