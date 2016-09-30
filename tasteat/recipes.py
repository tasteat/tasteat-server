import db


class Recipes:
    def __init__(self, ingredients):
        self.db = db.get_db()
        self.founds = []
        self.not_founds = []
        self.ingredients = ingredients
        self.get_ingredient_ids()

    def get_recipes(self):
        sql = self._get_sql()
        res = self.db.query(sql)
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

        for ingredient in self.founds:
            if intersect_sql != '':
                intersect_sql += '\nintersect\n'
            intersect_sql += 'select recipe_id from recipe_ingredients where ingredient_id = {}'.format(ingredient)

        return intersect_sql

    def get_ingredient_ids(self):
        for ingredient in self.ingredients:
            res = self.db.query(u'select id from ingredient where name = "{}" COLLATE NOCASE'.format(ingredient))
            found = None
            for row in res:
                found = row['id']
                break
            if found is None:
                self.not_founds.append(ingredient)
            else:
                self.founds.append(found)
