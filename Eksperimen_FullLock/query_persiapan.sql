CREATE TABLE transaksi (
    id SERIAL PRIMARY KEY,
    nama TEXT NOT NULL,
    jumlah INTEGER NOT NULL,
    tanggal TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO transaksi (nama, jumlah) VALUES
('Transaksi A', 100),
('Transaksi B', 200),
('Transaksi C', 300);

SELECT * FROM public.transaksi;

-- Memantau status Lock 
SELECT * FROM pg_locks;

-- Mencoba query saat table di lock
INSERT INTO transaksi (nama, jumlah) VALUES ('Transaksi D', 400);

UPDATE transaksi SET jumlah = jumlah + 50 WHERE id = 1;
DELETE FROM transaksi WHERE id = 3;

