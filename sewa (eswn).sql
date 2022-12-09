-- sewa
SELECT * 
FROM epbt.eswn_akaun
WHERE akaunsewa = "S0020160723";

SELECT * FROM epbt.eswn_harta WHERE noakaun = '213';

SELECT * FROM epbt.eswn_harta GROUP BY statussewa;

SELECT * FROM epbt.eswn_bil WHERE nobil = 'R202201321';
SELECT * FROM epbt.eswn_bilitem WHERE nobil = 'R202201321';

SELECT bi.* FROM epbt.eswn_bilitem bi 
INNER JOIN epbt.eswn_bil b
WHERE bi.nobil = b.nobil
AND noakaun = 'S0020160723';

-- sewaan perkhidmatan
SELECT * 
FROM epbt.eswp_akaun
WHERE noakaun = "R202100002";

SELECT * FROM epbt.eswp_bil WHERE nobil = 'L2022051016';
SELECT * FROM epbt.eswp_bilitem WHERE nobil = 'L2022051016';

SELECT bi.* FROM epbt.eswp_bilitem bi 
INNER JOIN epbt.eswp_bil b
WHERE bi.nobil = b.nobil
AND noakaun = 'R202100002';


