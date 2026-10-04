program DeretAngka;
uses crt;
var
  N, kategori, i : integer; // Variabel untuk batas angka, pilihan kategori, dan indeks loop

begin
  clrscr;
  write('Masukkan angka: '); // Meminta input batas akhir deret
  readln(N);
  write('Pilih kategori deret (1: Ganjil, 2: Genap): '); // Meminta pilihan kategori
  readln(kategori);
  writeln;

  write('Deret hasil penyaringan 1 sampai ', N, ': ');
  i := 1;
  while i <= N do // Mengulang sampai angka mencapai N
  begin
    // Lewati angka yang tidak sesuai kategori yang dipilih 
    if (kategori = 1) and (i mod 2 = 0) then
    begin
      i := i + 1;
      continue;  // bukan ganjil, lewati 
    end;
    if (kategori = 2) and (i mod 2 <> 0) then
    begin
      i := i + 1;
      continue;  // bukan genap, lewati 
    end;

    // Lewati angka kelipatan 5 
    if i mod 5 = 0 then
    begin
      i := i + 1;
      continue;
    end;

    write(i, ' ');
    i := i + 1;
  end;
  writeln;
end.
