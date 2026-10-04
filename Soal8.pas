{
  [SOAL 8] Hitung Gaji Karyawan Berdasarkan Golongan
  - Gaji pokok: 'A' = Rp1.500.000, 'B' = Rp2.000.000, 'C' = Rp2.500.000
  - Jam kerja standar = 40 jam/minggu; kelebihan jam = lembur Rp20.000/jam
  - Khusus Golongan 'C': jika total jam kerja > 50 jam,
    dapat bonus tambahan Rp100.000
  - Tampilkan rincian: Gaji Pokok, Lembur, Bonus, Total Gaji Akhir
}
program GajiKaryawan;

const
  JAM_STANDAR   = 40;
  TARIF_LEMBUR  = 20000;
  BATAS_BONUS_C = 50;
  BONUS_C       = 100000;

var
  golongan              : char;
  jamKerja, jamLembur   : integer;
  gajiPokok, uangLembur : longint;
  bonus, totalGaji      : longint;

begin
  write('Masukkan golongan karyawan (A/B/C): ');
  readln(golongan);
  write('Masukkan total jam kerja seminggu : ');
  readln(jamKerja);

  { Tentukan gaji pokok berdasarkan golongan }
  case upcase(golongan) of
    'A': gajiPokok := 1500000;
    'B': gajiPokok := 2000000;
    'C': gajiPokok := 2500000;
  else
    begin
      writeln('Golongan tidak valid!');
      halt;
    end;
  end;

  { Hitung lembur: kelebihan jam di atas jam standar }
  if jamKerja > JAM_STANDAR then
    jamLembur := jamKerja - JAM_STANDAR
  else
    jamLembur := 0;
  uangLembur := jamLembur * TARIF_LEMBUR;

  { Bonus khusus golongan C dengan total jam > 50 }
  bonus := 0;
  if (upcase(golongan) = 'C') and (jamKerja > BATAS_BONUS_C) then
    bonus := BONUS_C;

  totalGaji := gajiPokok + uangLembur + bonus;

  writeln;
  writeln('=== RINCIAN GAJI ===');
  writeln('Golongan      : ', upcase(golongan));
  writeln('Jam kerja     : ', jamKerja, ' jam (lembur ', jamLembur, ' jam)');
  writeln('Gaji Pokok    : Rp', gajiPokok);
  writeln('Uang Lembur   : Rp', uangLembur);
  writeln('Bonus         : Rp', bonus);
  writeln('Total Gaji    : Rp', totalGaji);
end.
