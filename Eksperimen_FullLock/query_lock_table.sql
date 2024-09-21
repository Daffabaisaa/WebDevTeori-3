-- Melakukan Exclusive Lock manual melalui query
BEGIN;
LOCK TABLE transaksi IN ACCESS EXCLUSIVE MODE;

-- Jika sudah selesai, jalankan query commit
COMMIT;