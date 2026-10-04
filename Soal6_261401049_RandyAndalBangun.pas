program NilaiAkhir;
uses crt;

const // Membuat konstanta untuk bobot nilai
  BOBOT_TUGAS = 0.30; // Bobot nilai tugas
  BOBOT_UTS   = 0.30; // Bobot nilai UTS
  BOBOT_UAS   = 0.40; // Bobot nilai UAS

var
  tugas, uts, uas, akhir, kehadiran : real; // Variabel untuk menyimpan nilai tugas, UTS, UAS, nilai akhir, dan kehadiran
  indeks : char; // Variabel untuk menyimpan indeks huruf

begin
  clrscr;
  // Mengambil input
  write('Masukkan Nilai Tugas (0-100) : ');
  readln(tugas);
  write('Masukkan Nilai UTS (0-100)   : ');
  readln(uts);
  write('Masukkan Nilai UAS (0-100)   : ');
  readln(uas);
  write('Masukkan Kehadiran (%)       : ');
  readln(kehadiran);

  akhir := tugas * BOBOT_TUGAS + uts * BOBOT_UTS + uas * BOBOT_UAS; // Menghitung nilai akhir dengan bobot 

  if akhir >= 85 then // Menentukan indeks huruf berdasarkan nilai akhir
    indeks := 'A'
  else if akhir >= 75 then
    indeks := 'B'
  else if akhir >= 60 then
    indeks := 'C'
  else if akhir >= 50 then
    indeks := 'D'
  else
    indeks := 'E';

  writeln;
  writeln('HASIL');
  writeln('Nilai Akhir : ', akhir:0:2);
  writeln('Indeks      : ', indeks);

  if (akhir >= 60) and (kehadiran >= 80) then // Menentukan status kelulusan jika nilai akhir minimal 60 dan kehadiran minimal 80%
    writeln('Status      : LULUS')
  else
    writeln('Status      : TIDAK LULUS');
end.
