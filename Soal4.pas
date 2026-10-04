{
  [SOAL 4] Kalkulator Sederhana dengan Case-Of dan Repeat-Until
  Menu: 1: Penjumlahan, 2: Pengurangan, 3: Perkalian,
        4: Pembagian Real, 5: DIV & MOD
  Setelah tiap perhitungan, tanya "Apakah ingin melakukan
  perhitungan lagi? (Y/T)" — berhenti jika jawab 'T' atau 't'.
}
program KalkulatorSederhana;

var
  pilihan : integer;
  a, b    : real;      { dua angka operand }
  hasil   : real;
  lagi    : char;

begin
  repeat
    { Tampilkan menu pilihan operasi }
    writeln;
    writeln('=== KALKULATOR SEDERHANA ===');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV & MOD');
    write('Pilih operasi (1-5): ');
    readln(pilihan);

    { Minta dua angka operand }
    write('Masukkan angka pertama : ');
    readln(a);
    write('Masukkan angka kedua   : ');
    readln(b);

    { Hitung dan tampilkan hasil sesuai pilihan }
    case pilihan of
      1: begin
           hasil := a + b;
           writeln('Hasil: ', a:0:2, ' + ', b:0:2, ' = ', hasil:0:2);
         end;
      2: begin
           hasil := a - b;
           writeln('Hasil: ', a:0:2, ' - ', b:0:2, ' = ', hasil:0:2);
         end;
      3: begin
           hasil := a * b;
           writeln('Hasil: ', a:0:2, ' x ', b:0:2, ' = ', hasil:0:2);
         end;
      4: begin
           if b = 0 then
             writeln('Error: pembagian dengan nol tidak diperbolehkan!')
           else
           begin
             hasil := a / b;
             writeln('Hasil: ', a:0:2, ' / ', b:0:2, ' = ', hasil:0:2);
           end;
         end;
      5: begin
           if trunc(b) = 0 then
             writeln('Error: pembagi nol tidak diperbolehkan!')
           else
             writeln('Hasil: ', trunc(a), ' div ', trunc(b), ' = ', trunc(a) div trunc(b),
                     ' , ', trunc(a), ' mod ', trunc(b), ' = ', trunc(a) mod trunc(b));
         end;
    else
      writeln('Pilihan tidak valid!');
    end;

    { Tanya apakah ingin menghitung lagi }
    writeln;
    write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
    readln(lagi);

  until (lagi = 'T') or (lagi = 't');

  writeln('Terima kasih telah menggunakan kalkulator!');
end.
