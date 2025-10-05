-- public.siswa definition

-- Drop table

-- DROP TABLE public.siswa;

CREATE TABLE public.siswa (
	id serial4 NOT NULL,
	nama varchar(100) NOT NULL,
	umur int4 NULL,
	jurusan varchar(50) NULL,
	CONSTRAINT siswa_pkey PRIMARY KEY (id)
);

-- public.nilai definition

-- Drop table

-- DROP TABLE public.nilai;

CREATE TABLE public.nilai (
	id serial4 NOT NULL,
	id_siswa serial4 NOT NULL,
	mata_pelajaran varchar(50) NULL,
	nilai int4 NULL,
	CONSTRAINT nilai_pkey PRIMARY KEY (id)
);

-- public.nilai foreign keys

ALTER TABLE public.nilai ADD CONSTRAINT nilai_id_siswa_fkey FOREIGN KEY (id_siswa) REFERENCES public.siswa(id);

-- mengisi data tabel
INSERT INTO public.siswa (nama,umur,jurusan) VALUES
	 ('Joshua',16,'IPA'),
	 ('Yunah',15,'IPA'),
	 ('Kai',16,'IPA'),
	 ('Jake',15,'IPS'),
	 ('Sophia',15,'IPS'),
	 ('Jennifer',16,'IPS');

INSERT INTO public.nilai (mata_pelajaran,nilai) VALUES
	 ('matematika',90),
	 ('matematika',85),
	 ('matematika',80),
	 ('matematika',80),
	 ('matematika',85),
	 ('matematika',80);

-- menampilkan semua siswa
SELECT * FROM siswa;

-- menampilkan nama siswa dengan jurusan IPA
SELECT nama, jurusan FROM siswa WHERE jurusan='IPA';

-- menampilkan nilai rata-rata tiap siswa
SELECT siswa.nama, AVG(nilai.nilai) AS rata_nilai
FROM siswa 
JOIN nilai ON siswa.id =nilai.id_siswa
GROUP BY siswa.nama;