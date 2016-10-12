USE tasteat;

insert into ingredient values(null, 'Açucar', 'pt_BR'); -- 1
insert into ingredient values(null, 'Óleo', 'pt_BR'); -- 2
insert into ingredient values(null, 'Farinha de trigo', 'pt_BR'); -- 3
insert into ingredient values(null, 'Ovo', 'pt_BR'); -- 4
insert into ingredient values(null, 'Fermento', 'pt_BR'); -- 5
insert into ingredient values(null, 'Margarina', 'pt_BR'); -- 6

insert into unit values(null, 'g', 'pt_BR'); -- 1
insert into unit values(null, 'Kg', 'pt_BR'); -- 2
insert into unit values(null, 'Colher de sopa', 'pt_BR'); --3
insert into unit values(null, 'Colher de chá', 'pt_BR'); -- 4
insert into unit values(null, 'Xícara', 'pt_BR'); -- 5
insert into unit values(null, 'Un', 'pt_BR'); -- 6

insert into recipe values(null, 'Bolo simples', 'pt_BR', 'Misture tudo', 10, 30); -- 1
insert into recipe values(null, 'Omelete', 'pt_BR', 'Bata os ovos', 1, 10); -- 2
insert into recipe values(null, 'Salgadinho', 'pt_BR', 'Misture com a mão', 100, 60); -- 3


insert into recipe_ingredients values(1, 1, 5, '3'); -- bolo; acucar; xicara
insert into recipe_ingredients values(1, 3, 5, '4'); -- bolo; far. trigo; xicara
insert into recipe_ingredients values(1, 4, 6, '2'); -- bolo; ovo; un
insert into recipe_ingredients values(1, 6, 3, '3'); -- bolo; margarina; colher sopa

insert into recipe_ingredients values(2, 4, 5, '2'); -- omelete; ovo; un
insert into recipe_ingredients values(2, 6, 3, '2'); -- omelete; margarina; colher sopa

