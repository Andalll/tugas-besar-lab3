{
  [SOAL 7] Tarif Parkir Berdasarkan Kode Kendaraan (Case-Of)
  - 'M' (Mobil) : Rp5.000 jam pertama, +Rp3.000/jam berikutnya
  - 'K' (Motor) : Rp2.000 jam pertama, +Rp1.000/jam berikutnya
  - 'B' (Bus)   : Rp10.000 jam pertama, +Rp5.000/jam berikutnya
  - Jika lama parkir > 10 jam, berlaku Tarif Maksimal Flat:
    Mobil Rp30.000, Motor Rp10.000, Bus Rp50.000
}
program TarifParkir;

const
  BATAS_FLAT = 10;  { lama parkir (jam) yang memicu tarif flat }

var
  kode      : char;
  lama      : integer;
  biaya     : longint;
  jenis     : string;

begin
  write('Masukkan kode kendaraan (M: Mobil, K: Motor, B: Bus): ');
  readln(kode);
  write('Masukkan lama parkir (jam): ');
  readln(lama);

  if lama < 1 then
  begin
    writeln('Lama parkir minimal 1 jam!');
    halt;
  end;

  jenis := 'Tidak dikenal';
  biaya := 0;

  case upcase(kode) of
    'M': begin
           jenis := 'Mobil';
           if lama > BATAS_FLAT then
             biaya := 30000                        { tarif maksimal flat }
           else
             biaya := 5000 + (lama - 1) * 3000;    { jam pertama + jam berikutnya }
         end;
    'K': begin
           jenis := 'Motor';
           if lama > BATAS_FLAT then
             biaya := 10000
           else
             biaya := 2000 + (lama - 1) * 1000;
         end;
    'B': begin
           jenis := 'Bus';
           if lama > BATAS_FLAT then
             biaya := 50000
           else
             biaya := 10000 + (lama - 1) * 5000;
         end;
  else
    writeln('Kode kendaraan tidak valid!');
  end;

  writeln;
  writeln('=== RINCIAN PARKIR ===');
  writeln('Jenis kendaraan : ', jenis);
  writeln('Lama parkir     : ', lama, ' jam');
  if lama > BATAS_FLAT then
    writeln('Keterangan      : Tarif Maksimal Flat');
  writeln('Biaya parkir    : Rp', biaya);
end.
