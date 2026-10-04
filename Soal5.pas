{
  [SOAL 5] Rekapitulasi Nilai M Mahasiswa dengan N Nilai Tugas
  - Input M (jumlah mahasiswa) dan N (jumlah tugas)
  - Nested loop (for-do bersarang) untuk input nilai tiap tugas
  - Rata-rata >= 65 dinyatakan "LULUS", selain itu "TIDAK LULUS"
  - Tampilkan rata-rata tiap mahasiswa + total LULUS dan TIDAK LULUS
}
program RekapNilai;

const
  BATAS_LULUS = 65.0;

var
  M, N, i, j          : integer;
  nilai, jumlah, rata : real;
  lulus, tidakLulus   : integer;
  status              : string;

begin
  write('Masukkan jumlah mahasiswa (M): ');
  readln(M);
  write('Masukkan jumlah tugas (N): ');
  readln(N);
  writeln;

  lulus      := 0;
  tidakLulus := 0;

  { Loop luar: per mahasiswa }
  for i := 1 to M do
  begin
    jumlah := 0;

    { Loop dalam: per tugas }
    for j := 1 to N do
    begin
      write('Nilai tugas ke-', j, ' mahasiswa ', i, ': ');
      readln(nilai);
      jumlah := jumlah + nilai;
    end;

    rata := jumlah / N;

    if rata >= BATAS_LULUS then
    begin
      status := 'LULUS';
      lulus  := lulus + 1;
    end
    else
    begin
      status     := 'TIDAK LULUS';
      tidakLulus := tidakLulus + 1;
    end;

    writeln('Mahasiswa ', i, ' -> Rata-rata: ', rata:0:2, ' (', status, ')');
    writeln;
  end;

  writeln('=== REKAPITULASI ===');
  writeln('Total mahasiswa LULUS       : ', lulus);
  writeln('Total mahasiswa TIDAK LULUS : ', tidakLulus);
end.
