SELECT mb.id_bed AS "id bed",
mb.nama_bed AS bed,
mk.nama_kamar AS kamar,
mr.nama_ruang AS ruang,
mb.icekbridging,
mb.ruang_aplicares 
FROM master_bed mb 
JOIN
master_kamar mk
ON mb.kamar_id = mk.id_kamar 
JOIN master_ruang mr ON mk.ruang_id = mr.id_ruang;

