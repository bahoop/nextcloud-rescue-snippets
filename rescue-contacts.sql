-- extract all vcf cards-entries from an adressbook. just store all entries with linebreaks as *.vcf file and your done
select carddata
from oc_cards
where addressbookid in
      (select id from oc_addressbooks where id in (select id from oc_addressbooks where principaluri like '%bahoop%'));
