-- cukai
SELECT * 
FROM epbt.etax_akaun
WHERE noakaun = "101020013000";

SELECT * 
FROM epbt.etax_cukai
WHERE noakaun = "101020013000";

SELECT * 
FROM epbt.etax_nilaian
WHERE noakaun = "101020013000";

SELECT * FROM epbt.etax_bil WHERE nobil = '20227101020013000156';
SELECT * FROM epbt.etax_bilitem WHERE nobil = 'L2022051016';

SELECT bi.* FROM epbt.etax_bilitem bi 
INNER JOIN epbt.etax_bil b
WHERE bi.nobil = b.nobil
AND noakaun = '101020013000';