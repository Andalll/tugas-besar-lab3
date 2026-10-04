program TarifParkir;
uses crt;

const // Membuat konstanta untuk batas lama parkir yang memakai tarif flat
  BATAS_FLAT = 10;  // Lama parkir yang memicu tarif flat

var
  kode      : char; // Variabel untuk menyimpan input kode kendaraan
  lama      : integer; // Variabel untuk menyimpan input lama parkir
  biaya     : longint; // Variabel untuk menyimpan hasil perhitungan biaya parkir
  jenis     : string; // Variabel untuk menyimpan jenis kendaraan berdasarkan kode

begin
  clrscr;
  write('Masukkan kode kendaraan (M: Mobil, K: Motor, B: Bus): ');
  readln(kode);
  write('Masukkan lama parkir (jam): ');
  readln(lama);

  if lama < 1 then // Memastikan lama parkir minimal satu jam
  begin
    writeln('Lama parkir minimal 1 jam!');
    halt;
  end;

  jenis := 'Tidak dikenal'; // Nilai awal jenis kendaraan
  biaya := 0; // Nilai awal biaya parkir

  case upcase(kode) of // Menentukan jenis kendaraan dan tarif berdasarkan kode
    'M': begin
           jenis := 'Mobil'; // Mengatur jenis kendaraan menjadi Mobil
           if lama > BATAS_FLAT then // Jika lama parkir melebihi batas, tarif maksimal flat berlaku
             biaya := 30000                        // tarif maksimal flat 
           else
             biaya := 5000 + (lama - 1) * 3000;    // jam pertama + jam berikutnya 
         end;
    'K': begin
           jenis := 'Motor'; // Mengatur jenis kendaraan menjadi Motor
           if lama > BATAS_FLAT then // Jika lama parkir melebihi batas, tarif maksimal flat berlaku
             biaya := 10000
           else
             biaya := 2000 + (lama - 1) * 1000;
         end;
    'B': begin
           jenis := 'Bus'; // Mengatur jenis kendaraan menjadi Bus
           if lama > BATAS_FLAT then // Jika lama parkir melebihi batas, tarif maksimal flat berlaku
             biaya := 50000
           else
             biaya := 10000 + (lama - 1) * 5000;
         end;
  else
    writeln('Kode kendaraan tidak valid!'); // Jika kode kendaraan bukan M/K/B
  end;

  writeln;
  writeln('RINCIAN PARKIR');
  writeln('Jenis kendaraan : ', jenis);
  writeln('Lama parkir     : ', lama, ' jam');
  if lama > BATAS_FLAT then
    writeln('Keterangan      : Tarif Maksimal Flat');
  writeln('Biaya parkir    : Rp', biaya);
end.
