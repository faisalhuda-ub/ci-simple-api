create database demo_api;

use demo_api;

create table news(
	id_news int AUTO_INCREMENT primary key,
    title varchar(255) not null,
    description text not null,
    link varchar(255) not null,
    pubdate varchar(255),
    creator varchar(45)
);
alter table news auto_increment=202001;

insert into news(title, description, link, pubdate, creator)
value('FILKOM UB Gelar Penyerahan Ijazah dan Transkrip Bertahap Bagi Wisudawan Periode IX X XI dan XII',
	'Fakultas Ilmu Komputer, Universitas Brawijaya (FILKOM UB) menyelenggarakan acara penyerahan ijazah dan transkrip secara bertahap bagi para wisudawan Periode IX, X, XI dan XII. Kegiatan dilaksanakan secara luring, bertempat di aula gedung G lantai 2 FILKOM UB dengan tetap memperhatikan protokol kesehatan yang ketat. Hingga berita ini dipublikasikan telah diselenggarakan [...]',
    'https://filkom.ub.ac.id/page/read/news/filkom-ub-gelar-penyerahan-ijazah-dan-transkrip-bertahap-bagi-wisudawan-periode-ix-x-xi-dan-xii/ed1fcf7',
    'Fri, 11 Dec 2020 00:00:00',
    'Dina Oktavia');

insert into news(title, description, link, pubdate, creator)
value('Jadwal UAS Program Magister Ilmu Komputer FILKOM UB Semester Ganjil TA 2020/2021',
	'Ujian Akhir Semester (UAS) Semester Ganjil TA. 2020/2021 bagi Program Magister Ilmu Komputer (S2) FILKOM UB akan dilaksanakan pada 21 &amp;ndash; 23 Desember 2020. Jadwal Pelaksanaan UAS dapat diunduh ditautan berikut https://s.ub.ac.id/uas22020 *Catatan: waktu mulai sesi masih dapat berubah, harap sering lakukan update data/informasi',
    'https://filkom.ub.ac.id/page/read/pengumuman/jadwal-uas-program-magister-ilmu-komputer-filkom-ub-semester-ganjil-ta-2020-2021/7a446bb',
    'Fri, 11 Dec 2020 00:00:00',
    'Dina Oktavia');
    
insert into news(title, description, link, pubdate, creator)
value('Update Jadwal UAS Program S1 Semester Ganjil TA 20202021 FILKOM UB',
	'Ujian Akhir Semester (UAS) Program S1 Fakultas Ilmu Komputer Universitas Brawijaya (FILKOM UB) Semester Ganjil TA. 2020/2021 akan diselenggarakan pada 14 &amp;ndash; 23 Desember 2020. Jadwal UAS dapat diunduh di tautan berikut&amp;nbsp;https://s.ub.ac.id/b *Catatan: waktu mulai sesi masih dapat berubah, harap sering lakukan update data/informasi',
    'https://filkom.ub.ac.id/page/read/pengumuman/update-jadwal-uas-program-s1-semester-ganjil-ta-2020-2021-filkom-ub/035f3b2',
    'Thu, 10 Dec 2020 00:00:00',
    'Dina Oktavia');
    
    