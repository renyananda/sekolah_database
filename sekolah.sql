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