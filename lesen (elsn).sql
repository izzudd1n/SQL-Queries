-- lesen // akaun, bil
SELECT * 
FROM epbt.elsn_akaun
WHERE noakaun = "LJ20202220318";

SELECT * FROM epbt.elsn_bil WHERE nobil = 'L2022051016';
SELECT * FROM epbt.elsn_bilitem WHERE nobil = 'L2022051016';

SELECT bi.* FROM epbt.elsn_bilitem bi 
INNER JOIN epbt.elsn_bil b
WHERE noakaun = 'LP2022022320';

-- 
SELECT a.`noakaun`, a.`statusaktif`, a.`statusbil`, a.`statuslesen`, a.`statustuntut`, a.`status_sementara` 
FROM epbt.`elsn_akaun` a 
WHERE a.noakaun = 'L01201610700';
-- pastikan status semua 1, statusaktif = A kecuali status_sementara(mesti 0)


SELECT COUNT(*) FROM epbt.elsn_bil b
JOIN epbt.`elsn_akaun` a ON b.`noakaun` = a.`noakaun` 
WHERE b.tarikh >= a.tarikhmulabil AND b.noakaun = 'LJ20202220318'
   AND statusbyr NOT IN (4,5);

-- if COUNT > 0;
-- Kalau bil dia baru buat tu dia kata salah... so BATALKAN bil tu dan ubah tarikh mula bil dia
-- Kalau dia kata bil tu betul... ubah tarikh mula bil LEBIH DARI tarikh bil yang latest tu

-- jalan, bandar, taman

SELECT * FROM epbt.epbt_jalan WHERE kod = 'K307';
SELECT * FROM epbt.epbt_taman WHERE kod = 'K307';
SELECT * FROM epbt.epbt_bandar WHERE kod = 'K307';


-- pelanggan

SELECT * FROM epbt.epbt_pelanggan WHERE nama LIKE '%suhana%'; -- nopelanggan
