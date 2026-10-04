{
  [SOAL 3] Deret Angka 1..N dengan While Loop dan Continue
  - Input N dan kategori deret (1: Ganjil, 2: Genap)
  - While loop dari 1 hingga N
  - Lewati (continue) angka yang tidak sesuai kategori
  - Lewati (continue) angka kelipatan 5
  - Tampilkan deret hasil penyaringan
}
program DeretAngka;

var
  N, kategori, i : integer;

begin
  write('Masukkan nilai N: ');
  readln(N);
  write('Pilih kategori deret (1: Ganjil, 2: Genap): ');
  readln(kategori);
  writeln;

  write('Deret hasil penyaringan 1..', N, ': ');
  i := 1;
  while i <= N do
  begin
    { Lewati angka yang tidak sesuai kategori yang dipilih }
    if (kategori = 1) and (i mod 2 = 0) then
    begin
      i := i + 1;
      continue;  { bukan ganjil, lewati }
    end;
    if (kategori = 2) and (i mod 2 <> 0) then
    begin
      i := i + 1;
      continue;  { bukan genap, lewati }
    end;

    { Lewati angka kelipatan 5 }
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
