-- sumamry by categorie
select 'categorie',c.categorie,sum(summ) summ from transactions t join expence_categorie c on c.cat_id=t.categorie group by c.categorie
order by c.categorie

-- summary by date
select 'summ',to_char(date_trunc('month',trn_date),'MONTH') dt,sum(summ) summ from transactions group by to_char(date_trunc('month',trn_date),'MONTH')
order by to_date(to_char(date_trunc('month',trn_date),'MONTH'),'Month');
