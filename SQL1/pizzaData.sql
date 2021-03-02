INSERT INTO ordre
VALUES( 6, '2014-01-30', null, 990, 2 );
INSERT INTO ordrelinje VALUES ( 6, 1, 3, 1, 228 );
INSERT INTO ordrelinje VALUES ( 6, 2, 4, 3, 762 );

Update pizzatyper
set  pris = pris*1.10;

delete from pizzatyper where navn = "Thai Chicken";

