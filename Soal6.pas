{
  [SOAL 6] Penentuan Nilai Akhir Mata Kuliah
  - Bobot: Tugas 30%, UTS 30%, UAS 40%
  - LULUS jika Nilai Akhir >= 60 DAN Kehadiran >= 80%
  - Indeks Huruf: A (>=85), B (75-84), C (60-74), D (50-59), E (<50)
}
program NilaiAkhir;

const
  BOBOT_TUGAS = 0.30;
  BOBOT_UTS   = 0.30;
  BOBOT_UAS   = 0.40;

var
  tugas, uts, uas, akhir, kehadiran : real;
  indeks : char;

begin
  write('Masukkan Nilai Tugas (0-100) : ');
  readln(tugas);
  write('Masukkan Nilai UTS (0-100)   : ');
  readln(uts);
  write('Masukkan Nilai UAS (0-100)   : ');
  readln(uas);
  write('Masukkan Kehadiran (%)       : ');
  readln(kehadiran);

  { Hitung nilai akhir berbobot }
  akhir := tugas * BOBOT_TUGAS + uts * BOBOT_UTS + uas * BOBOT_UAS;

  { Tentukan indeks huruf dengan nested if }
  if akhir >= 85 then
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
  writeln('=== HASIL ===');
  writeln('Nilai Akhir : ', akhir:0:2);
  writeln('Indeks      : ', indeks);

  { Status kelulusan: nilai akhir >= 60 DAN kehadiran >= 80% }
  if (akhir >= 60) and (kehadiran >= 80) then
    writeln('Status      : LULUS')
  else
    writeln('Status      : TIDAK LULUS');
end.
