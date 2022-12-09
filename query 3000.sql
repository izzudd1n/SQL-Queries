SELECT * FROM epbt.`elsn_akaun`
WHERE statusaktif NOT LIKE "A" ;


SELECT a.`noakaun`, a.`statusaktif`, a.`statusbil`, a.`statuslesen`, a.`statustuntut`, a.`status_sementara` 
FROM epbt.`elsn_akaun` a;

SELECT * FROM einvestment.inv_bank;

SELECT * 
FROM epbt.elsn_akaun
WHERE alamat IS LIKE "%sungai lembing%";