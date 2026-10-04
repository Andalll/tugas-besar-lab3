program RekapNilai;
uses crt;

const // Membuat konstanta untuk batas nilai kelulusan
  BATAS_LULUS = 65.0; // Nilai minimum agar mahasiswa dinyatakan lulus

var
  M, N, i, j          : integer; // Variabel untuk jumlah mahasiswa, jumlah tugas, dan variabel loop
  nilai, jumlah, rata : real; // Variabel untuk nilai tugas, total nilai, dan rata-rata
  lulus, tidakLulus   : integer; // Variabel untuk menghitung jumlah siswa lulus dan tidak lulus
  status              : string; // Variabel untuk menyimpan status kelulusan

begin
  clrscr;
  write('Masukkan jumlah mahasiswa (M): ');
  readln(M);
  write('Masukkan jumlah tugas (N): ');
  readln(N);
  writeln;

  lulus      := 0; // Inisialisasi jumlah mahasiswa yang lulus
  tidakLulus := 0; // Inisialisasi jumlah mahasiswa yang tidak lulus

  for i := 1 to M do // Mengulang proses untuk setiap mahasiswa
  begin
    jumlah := 0; // Menyimpan total nilai tugas mahasiswa saat ini

    for j := 1 to N do // Mengulang input nilai untuk setiap tugas mahasiswa
    begin
      write('Nilai tugas ke-', j, ' mahasiswa ', i, ': ');
      readln(nilai);
      jumlah := jumlah + nilai; // Menambah nilai tugas ke total nilai
    end;

    rata := jumlah / N; // Menghitung rata-rata nilai mahasiswa

    if rata >= BATAS_LULUS then // Menentukan status kelulusan berdasarkan rata-rata
    begin
      status := 'LULUS';
      lulus  := lulus + 1; // Menambah jumlah mahasiswa lulus
    end
    else
    begin
      status     := 'TIDAK LULUS';
      tidakLulus := tidakLulus + 1; // Menambah jumlah mahasiswa tidak lulus
    end;

    writeln('Mahasiswa ', i, ' -> Rata-rata: ', rata:0:2, ' (', status, ')');
    writeln;
  end;

  writeln('REKAP NILAI');
  writeln('Total mahasiswa LULUS       : ', lulus);
  writeln('Total mahasiswa TIDAK LULUS : ', tidakLulus);
end.
