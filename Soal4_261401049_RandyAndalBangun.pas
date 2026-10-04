program KalkulatorSederhana;
uses crt;

var
  pilihan : integer; // Variabel untuk menyimpan pilihan operasi
  a, b    : real; // Dua angka operand yang akan diolah
  hasil   : real; // Variabel untuk menyimpan hasil perhitungan
  lagi    : char; // Variabel untuk mengulang perhitungan

begin
  clrscr;
  repeat
    // Tampilkan menu pilihan operasi
    writeln;
    writeln('KALKULATOR SEDERHANA');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV & MOD');
    write('Pilih operasi (1-5): ');
    readln(pilihan);

    write('Masukkan angka pertama : '); // Meminta input angka pertama
    readln(a);
    write('Masukkan angka kedua   : '); // Meminta input angka kedua
    readln(b);

    case pilihan of // Menentukan operasi yang akan dijalankan
      1: begin
           hasil := a + b; // Menjumlahkan dua angka
           writeln('Hasil: ', a:0:2, ' + ', b:0:2, ' = ', hasil:0:2);
         end;
      2: begin
           hasil := a - b; // Mengurangi angka pertama dengan angka kedua
           writeln('Hasil: ', a:0:2, ' - ', b:0:2, ' = ', hasil:0:2);
         end;
      3: begin
           hasil := a * b; // Mengalikan dua angka
           writeln('Hasil: ', a:0:2, ' x ', b:0:2, ' = ', hasil:0:2);
         end;
      4: begin
           if b = 0 then // Mencegah pembagian dengan nol
             writeln('Error: pembagian dengan nol tidak diperbolehkan!')
           else
           begin
             hasil := a / b; // Membagi angka pertama dengan angka kedua
             writeln('Hasil: ', a:0:2, ' / ', b:0:2, ' = ', hasil:0:2);
           end;
         end;
      5: begin
           if trunc(b) = 0 then // Mencegah pembagi nol pada operasi div/mod
             writeln('Error: pembagi nol tidak diperbolehkan!')
           else
             writeln('Hasil: ', trunc(a), ' div ', trunc(b), ' = ', trunc(a) div trunc(b),
                     ' , ', trunc(a), ' mod ', trunc(b), ' = ', trunc(a) mod trunc(b));
         end;
    else
      writeln('Pilihan tidak valid!'); // Jika pilihan di luar 1-5
    end;

    writeln;
    write('Apakah ingin melakukan perhitungan lagi? (Y/T): '); // Menanyakan apakah user ingin mengulang
    readln(lagi);

  until (lagi = 'T') or (lagi = 't');

  writeln('Terima kasih telah menggunakan kalkulator!');
end.
