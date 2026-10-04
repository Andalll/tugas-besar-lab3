{
  [SOAL 9] Jumlah Hari dalam Suatu Bulan
  - Input tahun dan nomor bulan (1-12)
  - Tahun Kabisat: habis dibagi 400 ATAU habis dibagi 4
    tetapi tidak habis dibagi 100 (operator mod)
  - Bulan 1,3,5,7,8,10,12 = 31 hari; Bulan 4,6,9,11 = 30 hari;
    Bulan 2 = 29 hari (Kabisat) / 28 hari (Bukan Kabisat)
}
program JumlahHari;

var
  tahun, bulan, hari : integer;
  kabisat            : boolean;

begin
  write('Masukkan tahun : ');
  readln(tahun);
  write('Masukkan nomor bulan (1-12): ');
  readln(bulan);

  if (bulan < 1) or (bulan > 12) then
  begin
    writeln('Nomor bulan tidak valid!');
    halt;
  end;

  { Cek tahun kabisat menggunakan operator mod }
  kabisat := (tahun mod 400 = 0) or ((tahun mod 4 = 0) and (tahun mod 100 <> 0));

  { Tentukan jumlah hari berdasarkan bulan }
  case bulan of
    1, 3, 5, 7, 8, 10, 12: hari := 31;
    4, 6, 9, 11          : hari := 30;
    2: begin
         if kabisat then
           hari := 29
         else
           hari := 28;
       end;
  end;

  writeln;
  if kabisat then
    writeln('Tahun ', tahun, ' adalah tahun KABISAT.')
  else
    writeln('Tahun ', tahun, ' BUKAN tahun kabisat.');
  writeln('Bulan ke-', bulan, ' tahun ', tahun, ' memiliki ', hari, ' hari.');
end.
