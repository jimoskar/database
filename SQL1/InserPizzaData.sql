-- legger inn data -- poststeder
insert into poststeder values (7000, 'Trondheim'); 
insert into poststeder values (8000, 'Bodø'); 
insert into poststeder values (9000, 'Tromsø'); 
insert into poststeder values (9090, 'Kirkenes'); 
insert into poststeder values (7046, 'Trondheim');

-- kunder
insert into kunde
values (1, 'Ola', 'Kirkegata 1', 7000, 12341234, 10000);
insert into kunde
values (2, 'Kari', 'Elgesetergate 12', 7000, 12344321, 10000);
insert into kunde
values (3, 'Per', 'Munkegata 10', 7000, 11223344, 5000);
insert into kunde
values (4, 'Ola', 'Kongens gate 12', 8000, 88667755, 5000);

-- pizzaer
insert into pizzatyper values (1, 'Cheese & Tomato', 170); 
insert into pizzatyper values (2, 'The Tropical', 228); 
insert into pizzatyper values (3, 'Pepper Steak', 228); 
insert into pizzatyper values (4, 'Thai Chicken', 254); 
insert into pizzatyper values (5, 'Heavy Heaven', 258);

-- ordrer
insert into ordre values (1, '2014-01-10', 'Levert', 170, 1);
 insert into ordre values (2, '2014-01-10', 'Levert', 568, 2); 
 insert into ordre values (3, '2014-01-11', 'Levert', 710, 3); 
 insert into ordre values (4, '2014-01-11', 'Levert', 254, 3); 
 insert into ordre values (5, '2014-01-12', 'Levert', 482, 2);
 
-- ordrelinje
insert into ordrelinje values(1, 1, 1, 1, 170);
insert into ordrelinje values(2, 1, 1, 2, 340);
insert into ordrelinje values(2, 2, 2, 1, 228); 
insert into ordrelinje values(3, 1, 2, 1, 228); 
insert into ordrelinje values(3, 2, 3, 1, 228);
insert into ordrelinje values(3, 3, 4, 1, 254); 
insert into ordrelinje values(4, 1, 4, 1, 254); 
insert into ordrelinje values(5, 1, 4, 1, 254); 
insert into ordrelinje values(5, 2, 3, 1, 228);
