USE tasteat;

insert into lang values('en_US', 'English');
insert into lang values('pt_BR', 'Português Brasileiro');

------------ INGREDIENTS -----------
insert into ingredient values(null); --1
insert into ingredient_translation values(1, 'en_US', 'Sugar');
insert into ingredient_translation values(1, 'pt_BR', 'Açucar');

insert into ingredient values(null); --2
insert into ingredient_translation values(2, 'en_US', 'Olive oil');
insert into ingredient_translation values(2, 'pt_BR', 'Azeite');

insert into ingredient values(null); --3
insert into ingredient_translation values(3, 'en_US', 'Egg');
insert into ingredient_translation values(3, 'pt_BR', 'Ovo');

insert into ingredient values(null); --4
insert into ingredient_translation values(4, 'en_US', 'Butter');
insert into ingredient_translation values(4, 'pt_BR', 'Margarina');

------------ UNITS -----------
insert into unit values(null); --1
insert into unit_translation values(1, 'en_US', 'g');
insert into unit_translation values(1, 'pt_BR', 'g');

insert into unit values(null); --2
insert into unit_translation values(2, 'en_US', 'Kg');
insert into unit_translation values(2, 'pt_BR', 'Kg');

insert into unit values(null); --3
insert into unit_translation values(3, 'en_US', 'Tablespoon');
insert into unit_translation values(3, 'pt_BR', 'Colher de sopa');

insert into unit values(null); --4
insert into unit_translation values(4, 'en_US', 'Cup');
insert into unit_translation values(4, 'pt_BR', 'Xícara');

insert into unit values(null); --5
insert into unit_translation values(5, 'en_US', 'Un');
insert into unit_translation values(5, 'pt_BR', 'Un');

-------------- RECIPES pt_BR -----------
insert into recipe values(null, 'Bolo simples', 'pt_BR', 'Misture tudo', 10, 30); -- 1
insert into recipe values(null, 'Omelete', 'pt_BR', 'Bata os ovos', 1, 10); -- 2
insert into recipe values(null, 'Salgadinho', 'pt_BR', 'Misture com a mão', 100, 60); -- 3


insert into recipe_ingredients values(1, 1, 4, '3'); -- bolo; acucar; xicara
insert into recipe_ingredients values(1, 3, 5, '3'); -- bolo; ovo; un
insert into recipe_ingredients values(1, 4, 3, '3'); -- bolo; margarina; colher sopa

insert into recipe_ingredients values(2, 3, 5, '2'); -- omelete; ovo; un
insert into recipe_ingredients values(2, 4, 3, '2'); -- omelete; margarina; colher sopa

-------------- RECIPES en_US -----------
insert into recipe values(null, 'Simple cake', 'en_US', 'Mix everything together', 10, 30); -- 4


insert into recipe_ingredients values(4, 1, 4, '3'); -- cake; sugar; cup
insert into recipe_ingredients values(4, 3, 5, '3'); -- cake; egg; un
insert into recipe_ingredients values(4, 4, 3, '3'); -- cake; butter; tablespoon
