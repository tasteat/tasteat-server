import dataset

db = None


def get_db():
    global db

    if db is None:
        db = dataset.connect('sqlite:///tasteat/recipes.db')

    return db
