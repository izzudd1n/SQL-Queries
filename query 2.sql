SELECT * FROM epbt.elsn_bil
WHERE statusbyr = "4" AND baki > 0.00;

SELECT * FROM epbt.epbt_jernal WHERE noakaun = "PLKK01202221319";

SELECT bi.* FROM epbt.elsn_bilitem bi 
INNER JOIN epbt.elsn_bil b
WHERE bi.nobil = b.nobil
AND b.nobil = 'L2022051004';

SELECT bi.* FROM epbt.elsn_bilitem bi; 

SELECT bi.* FROM epbt.elsn_bilitem bi 
INNER JOIN epbt.elsn_bil b
WHERE bi.nobil = bs.nobil
AND b.nobil IN ('L2022050912','L2022051004', 'L2022051005');

SELECT * FROM epbt.`elsn_akaun`
WHERE statusaktif NOT LIKE "A" ;

SELECT *
FROM epbt.`elsn_akaun`
WHERE noakaun = 'LP2022022320';

SELECT
fd.id,
fd.inv_bank_id,
fd.registration_num,
iv.product_code,
ib.interest_rate,
cb.bankname,
CONCAT(cb.bankaddr1,cb.bankaddr2) alamat
FROM einvestment.fixed_deposit fd
INNER JOIN einvestment.inv_bank iv ON fd.inv_bank_id = iv.id
INNER JOIN einvestment.ibank ib ON iv.ibank_id = ib.id
INNER JOIN efin.cbank cb ON ib.cbank_bank = cb.bank
WHERE fd.date_start AND fd.date_end BETWEEN "2020-01-01" AND "2022-12-31" AND fd.principal_amount > 1000000;

SELECT *
FROM epbt.epbt_jalan jl
INNER JOIN epbt.`epbt_taman` tm ON jl.`kod`= tm.`kod`
INNER JOIN epbt.`epbt_bandar` bd ON tm.`kod` = bd.`kod`
WHERE tm.kod = 'TK03';

SELECT * FROM epbt.epbt_jalan WHERE kod = 'K307';
SELECT * FROM epbt.epbt_taman WHERE kod = 'K307';
SELECT * FROM epbt.epbt_bandar WHERE kod = 'K307';


SELECT * FROM epbt.`ecas_resit`
WHERE tarikh = "2022-07-06" AND bayaran = "Kad Debit";
