SELECT kode_produk, nama_produk, harga
FROM ms_produk_1
WHERE harga < 100000
UNION
SELECT kode_produk, nama_produk, harga
FROM ms_produk_2
WHERE harga < 50000;