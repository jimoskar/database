select navn, adresse
from kunde
where kunde.postnr = 7000;

select count(*) as AntallKunder
from kunde;

select distinct poststed
from poststeder
order by poststed asc;

select kid, navn, adresse, postnr, poststed
from kunde natural join poststeder;

select count(*) as antall, sum(pris) as total
from ordrelinje inner join pizzatyper on pizzanr = pid
where navn = "Thai Chicken";

select distinct navn 
from ordrelinje inner join pizzatyper on pizzanr = pid
order by navn asc;

select kid, navn, adresse
from kunde
where adresse like '%gata%';

SELECT navn
FROM pizzatyper
WHERE pid NOT IN (
SELECT pizzanr
FROM kunde
INNER JOIN ordre ON kunde.kid = ordre.kunde
INNER JOIN ordrelinje ON ordre.ordrenr = ordrelinje.ordrenr WHERE kunde.navn = 'Kari');

SELECT navn
FROM kunde
UNION
SELECT navn
FROM pizzatyper;

select ps.postnr, ps.poststed, count(k.kid) as antall
from poststeder as ps left outer join kunde as k on  ps.postnr = k.postnr
group by ps.postnr, ps.poststed 
order by antall desc;

select kid, navn
from kunde
where kunde.kid not in (
	select k.kid
    from kunde as k inner join ordre as o on k.kid = o.kunde
		natural join ordrelinje 
        inner join pizzatyper as pt on pizzanr = pt.pid
	where pt.navn = "Thai Chicken"
    )






