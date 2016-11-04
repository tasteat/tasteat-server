--USE tasteat;

insert into lang values('en_US', 'English');
insert into lang values('pt_BR', 'Português Brasileiro');

-- ---------- INGREDIENTS -----------
insert into ingredient values(null); -- 1
insert into ingredient_translation values(1, 'en_US', 'Sugar');
insert into ingredient_translation values(1, 'pt_BR', 'Açucar');

insert into ingredient values(null); -- 2
insert into ingredient_translation values(2, 'en_US', 'Olive oil');
insert into ingredient_translation values(2, 'pt_BR', 'Azeite');

insert into ingredient values(null); -- 3
insert into ingredient_translation values(3, 'en_US', 'Egg');
insert into ingredient_translation values(3, 'pt_BR', 'Ovo');

insert into ingredient values(null); -- 4
insert into ingredient_translation values(4, 'en_US', 'Butter');
insert into ingredient_translation values(4, 'pt_BR', 'Margarina');

-- ---------- UNITS -----------
insert into unit values(null); -- 1
insert into unit_translation values(1, 'en_US', 'g');
insert into unit_translation values(1, 'pt_BR', 'g');

insert into unit values(null); -- 2
insert into unit_translation values(2, 'en_US', 'Kg');
insert into unit_translation values(2, 'pt_BR', 'Kg');

insert into unit values(null); -- 3
insert into unit_translation values(3, 'en_US', 'Tablespoon');
insert into unit_translation values(3, 'pt_BR', 'Colher de sopa');

insert into unit values(null); -- 4
insert into unit_translation values(4, 'en_US', 'Cup');
insert into unit_translation values(4, 'pt_BR', 'Xícara');

insert into unit values(null); -- 5
insert into unit_translation values(5, 'en_US', 'Un');
insert into unit_translation values(5, 'pt_BR', 'Un');

-- ---------- CATEGORIES ------------
insert into recipe_category values(null); -- 1
insert into recipe_category_translation values(1, 'en_US', 'Appetizers and Snacks');
insert into recipe_category_translation values(1, 'pt_BR', 'Aperitivos e Lanches');

insert into recipe_category values(null); -- 2
insert into recipe_category_translation values(2, 'en_US', 'BBQ & Grilling');
insert into recipe_category_translation values(2, 'pt_BR', 'Churrasco e Grelhados');

insert into recipe_category values(null); -- 3
insert into recipe_category_translation values(3, 'en_US', 'Bread Recipes');
insert into recipe_category_translation values(3, 'pt_BR', 'Pão');

insert into recipe_category values(null); -- 4
insert into recipe_category_translation values(4, 'en_US', 'Breakfast and Brunch');
insert into recipe_category_translation values(4, 'pt_BR', 'Café da Manhã');

insert into recipe_category values(null); -- 5
insert into recipe_category_translation values(5, 'en_US', 'Desserts');
insert into recipe_category_translation values(5, 'pt_BR', 'Sobremesas');

insert into recipe_category values(null); -- 6
insert into recipe_category_translation values(6, 'en_US', 'Dinner Recipes');
insert into recipe_category_translation values(6, 'pt_BR', 'Jantar');

insert into recipe_category values(null); -- 7
insert into recipe_category_translation values(7, 'en_US', 'Drinks');
insert into recipe_category_translation values(7, 'pt_BR', 'Bebidas');

insert into recipe_category values(null); -- 8
insert into recipe_category_translation values(8, 'en_US', 'Everyday Cooking');
insert into recipe_category_translation values(8, 'pt_BR', 'Cozinha do Dia-a-dia');

insert into recipe_category values(null); -- 9
insert into recipe_category_translation values(9, 'en_US', 'Fruits, Vegetables and Other Produce');
insert into recipe_category_translation values(9, 'pt_BR', 'Frutas, Vegetais e Outras Produções');

insert into recipe_category values(null); -- 10
insert into recipe_category_translation values(10, 'en_US', 'Healthy Recipes');
insert into recipe_category_translation values(10, 'pt_BR', 'Receitas Saudáveis');

insert into recipe_category values(null); -- 11
insert into recipe_category_translation values(11, 'en_US', 'Holidays and Events');
insert into recipe_category_translation values(11, 'pt_BR', 'Feriados e Eventos');

insert into recipe_category values(null); -- 12
insert into recipe_category_translation values(12, 'en_US', 'Ingredients');
insert into recipe_category_translation values(12, 'pt_BR', 'Ingredientes');

insert into recipe_category values(null); -- 13
insert into recipe_category_translation values(13, 'en_US', 'Lunch Recipes');
insert into recipe_category_translation values(13, 'pt_BR', 'Almoço');

insert into recipe_category values(null); -- 14
insert into recipe_category_translation values(14, 'en_US', 'Main Dishes');
insert into recipe_category_translation values(14, 'pt_BR', 'Prato Principal');

insert into recipe_category values(null); -- 15
insert into recipe_category_translation values(15, 'en_US', 'Meat and Poultry');
insert into recipe_category_translation values(15, 'pt_BR', 'Carnes e Aves');

insert into recipe_category values(null); -- 16
insert into recipe_category_translation values(16, 'en_US', 'Pasta and Noodles');
insert into recipe_category_translation values(16, 'pt_BR', 'Massas');

insert into recipe_category values(null); -- 17
insert into recipe_category_translation values(17, 'en_US', 'Salad Recipes');
insert into recipe_category_translation values(17, 'pt_BR', 'Saladas');

insert into recipe_category values(null); -- 18
insert into recipe_category_translation values(18, 'en_US', 'Seafood Recipes');
insert into recipe_category_translation values(18, 'pt_BR', 'Frutos do Mar');

insert into recipe_category values(null); -- 19
insert into recipe_category_translation values(19, 'en_US', 'Side Dishes');
insert into recipe_category_translation values(19, 'pt_BR', 'Acompanhamentos');

insert into recipe_category values(null); -- 20
insert into recipe_category_translation values(20, 'en_US', 'Soups, Stews and Chili');
insert into recipe_category_translation values(20, 'pt_BR', 'Sopas, Ensopados e Pimentas');

-- ---------- COOK TIME CATEGORIES ------------
insert into total_time_category values(null, 0, 30); -- 1
insert into total_time_category_translation values(1, 'en_US', 'Quick');
insert into total_time_category_translation values(1, 'pt_BR', 'Rápido');

insert into total_time_category values(null, 31, 60); -- 2
insert into total_time_category_translation values(2, 'en_US', 'Medium');
insert into total_time_category_translation values(2, 'pt_BR', 'Médio');

insert into total_time_category values(null, 61, 100000); -- 3
insert into total_time_category_translation values(3, 'en_US', 'Long');
insert into total_time_category_translation values(3, 'pt_BR', 'Longo');

-- ------------ RECIPES pt_BR -----------
insert into recipe values(null, 'Bolo simples', 'pt_BR', 'Misture tudo', 10, 30, 5); -- 1
insert into recipe values(null, 'Omelete', 'pt_BR', 'Bata os ovos', 1, 10, 14); -- 2
insert into recipe values(null, 'Salgadinho', 'pt_BR', 'Misture com a mão', 100, 60, 11); -- 3


insert into recipe_ingredients values(1, 1, 4, '3'); -- bolo; acucar; xicara
insert into recipe_ingredients values(1, 3, 5, '3'); -- bolo; ovo; un
insert into recipe_ingredients values(1, 4, 3, '3'); -- bolo; margarina; colher sopa

insert into recipe_ingredients values(2, 3, 5, '2'); -- omelete; ovo; un
insert into recipe_ingredients values(2, 4, 3, '2'); -- omelete; margarina; colher sopa

-- ------------ RECIPES en_US -----------
insert into recipe values(null, 'Simple cake', 'en_US', 'Mix everything together', 10, 30, 5); -- 4


insert into recipe_ingredients values(4, 1, 4, '3'); -- cake; sugar; cup
insert into recipe_ingredients values(4, 3, 5, '3'); -- cake; egg; un
insert into recipe_ingredients values(4, 4, 3, '3'); -- cake; butter; tablespoon
