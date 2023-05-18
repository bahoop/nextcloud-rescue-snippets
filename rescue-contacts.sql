-- extract all vcf cards-entries from an adressbook. just store all entries with linebreaks as *.vcf file and your done
-- caution: sql in statement is used, ensure manually that the inner like query return only one row as a result!
select carddata
from oc_cards
where addressbookid in
      (select id from oc_addressbooks where id in (select id from oc_addressbooks where principaluri like '%bahoop%'));
