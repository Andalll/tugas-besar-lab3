program JumlahHari;
uses crt;
var
  tahun, bulan, hari : integer; // Variabel untuk menyimpan input tahun, bulan, dan nilai hari
  kabisat            : boolean; // Variabel apakah tahun tersebut kabisat atau tidak

begin
  clrscr;
  write('Masukkan tahun : ');
  readln(tahun);
  write('Masukkan nomor bulan (1-12): ');
  readln(bulan);

  if (bulan < 1) or (bulan > 12) then // Cek apakah angka bulan berada antara 1-12
  begin
    writeln('Nomor bulan tidak valid!');
    halt;
  end;

  
  kabisat := (tahun mod 400 = 0) or ((tahun mod 4 = 0) and (tahun mod 100 <> 0)); // Cek apakah tahun kabisat

  
  case bulan of // Menentukan jumlah hari dalam bulan dengan menggunakan Case Of
    1, 3, 5, 7, 8, 10, 12: hari := 31;
    4, 6, 9, 11          : hari := 30;
    2: begin
         if kabisat then // Jika tahun kabisat jumlah hari di bulan 2 adalah 29 hari
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
