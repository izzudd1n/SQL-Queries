-- bp
SELECT * 
FROM epbt.bp_pelbil
WHERE noakaun = "MB/2022/000694";


SELECT * FROM epbt.bp_bil WHERE nobil = '20227101020013000156';
SELECT * FROM epbt.bp_bilitem WHERE nobil = 'L2022051016';

SELECT bi.* FROM epbt.bp_bilitem bi 
INNER JOIN epbt.bp_bil b
WHERE bi.nobil = b.nobil
AND noakaun = 'MB/2022/000694';