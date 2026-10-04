program NamaHari;
uses crt;


var
  n : integer; // Membuat variabel n untuk menyimpan pilihan

begin
  clrscr;
  write('Masukkan Angka: ');
  readln(n); // Mengambil input keyboard

  case n of // Menggunakan Case Of untuk memilih hari berdasarkan angka dan menampilkannnya
    1: writeln('Hari Senin');
    2: writeln('Hari Selasa');
    3: writeln('Hari Rabu');
    4: writeln('Hari Kamis');
    5: writeln('Hari Jumat');
    6: writeln('Hari Sabtu');
    7: writeln('Hari Minggu');
  else
    writeln('Angka tidak valid! Masukkan angka 1 sampai 7.'); // Jika angka dimasukkan tidak ada dalam pilihan Case Of
    
  end;
end.
