program DeretAngka;
uses crt;
var
  N, kategori, i : integer; // Variabel untuk batas angka, pilihan kategori, dan indeks loop

begin
  clrscr;
  write('Masukkan nilai N: '); // Meminta input batas akhir deret
  readln(N);
  write('Pilih kategori deret (1: Ganjil, 2: Genap): '); // Meminta pilihan kategori
  readln(kategori);
  writeln;

  write('Hasil Deret 1 sampai ', N, ': ');
  i := 1; // Mulai iterasi dari angka 1
  while i <= N do // Mengulang sampai angka mencapai batas N
  begin
    if (kategori = 1) and (i mod 2 = 0) then // Jika pilihan adalah ganjil, angka genap tidak ditampilkan
      i := i + 1
    else if (kategori = 2) and (i mod 2 <> 0) then // Jika pilihan adalah genap, angka ganjil tidak ditampilkan
      i := i + 1
    else if i mod 5 = 0 then // Jika angka kelipatan 5, angka itu tidak ditampilkan
      i := i + 1
    else
    begin
      write(i, ' '); // Menampilkan angka yang lolos penyaringan
      i := i + 1;
    end;
  end;
  writeln;
end.
