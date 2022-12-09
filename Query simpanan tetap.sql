SELECT *
FROM einvestment.`fixed_deposit`;

-- list dekat senarai simpanan tetap --
SELECT 
fd.`id`,
fd.`registration_num`,
fd.`inv_cert_num`,
fd.`journal_num`,
fd.`date_start`,
fd.`date_end`,
fd.`principal_amount`,
fd.`fd_intr_amount`,
fd.`fd_status` 
FROM einvestment.`fixed_deposit` fd
WHERE fd.fd_status = 'LULUS';

-- list dekat senarai semakan-- 
SELECT
fda.`id`,
fd.`registration_num`,
fda.`inv_cert_num`,
fda.`bank_ref_num`,
fda.`comment`,
fda.`status`,
fd.`id`
FROM einvestment.`fd_adjustment` fda
INNER JOIN einvestment.`fixed_deposit` fd ON fda.`main_fd_id` = fd.`id`;

-- list dekat senarai PEMBAHARUAN PELABURAN --
SELECT
fd.`id`,
fd.`registration_num`,
fd.`inv_cert_num`,
fd.`journal_num`,
fd.`date_start`,
fd.`date_end`,
fd.`principal_amount`,
fd.`fd_intr_amount`,
fd.`comment`,
fd.`fd_status`
FROM einvestment.`fd_renewal` fdr
INNER JOIN einvestment.`fixed_deposit` fd ON fdr.`fixed_deposit_id` = fd.`id`;

-- list dekat SENARAI LEJER PELABURAN --
SELECT  
ivl.`id`,
ivl.`journal_number`,
ivl.`entry_date`,
ivl.`description`,
ivl.`total_amount`,
ivl.`status`
FROM einvestment.`inv_ledger` ivl;

-- list dekat SENARAI PENAMBAHAN SIMPANAN TETAP --
SELECT 
fd.`id`,
fd.`addition_ref_num`,
fd.`inv_cert_num`,
fd.`journal_num`,
fd.`date_start`,
fd.`date_end`,
fd.`principal_amount`,
fd.`inv_period`,
fd.fd_status
FROM einvestment.`fixed_deposit` fd
WHERE fd.`addition_ref_num` IS NOT NULL
ORDER BY fd.`addition_ref_num` ASC;

-- list dekat SENARAI PENGELUARAN PELABURAN --
SELECT
fdw.`id`,
fdw.`registration_num`,
fdw.`wd_ref_num`,
fdw.`journal_num`,
fdw.`principal_amount_taken`,
fdw.`intr_amount_taken`,
fdw.`sum_amount_taken`,
fdw.`status`
FROM einvestment.`fd_withdrawal` fdw
WHERE fdw.`status` NOT LIKE 'deleted';

-- list dekat SENARAI PENUTUPAN PELABURAN--
SELECT *
FROM einvestment.`fd_closing` fdc;