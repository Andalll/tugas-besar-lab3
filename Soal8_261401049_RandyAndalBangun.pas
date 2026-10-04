program GajiKaryawan;
uses crt;

const // Membuat constanta untuk variabel yang tidak berubah
  JAM_STANDAR   = 40;
  TARIF_LEMBUR  = 20000;
  BATAS_BONUS_C = 50;
  BONUS_C       = 100000;

var 
  golongan              : char; // Variabel untuk menyimpan input golongan
  jamKerja, jamLembur   : integer; // Variabel untuk menyimpan input jam
  gajiPokok, uangLembur, bonus, totalGaji : longint; // Variabel Longint untuk menyimpan nilai uang
  
begin
  clrscr;
  write('Masukkan golongan karyawan (A/B/C): '); 
  readln(golongan);
  write('Masukkan total jam kerja seminggu : '); 
  readln(jamKerja);

  case golongan of // Menentukan gaji pokok sesuai golongan menggunakan Case Of
    'A': gajiPokok := 1500000;
    'B': gajiPokok := 2000000;
    'C': gajiPokok := 2500000;
  else
    begin
      writeln('Golongan tidak valid!'); // Jika golongan bukan A/B/C, program berhenti
      halt;
    end;
  end;

  if jamKerja > JAM_STANDAR then // Menghitung jam lembur jika melebihi standar
    jamLembur := jamKerja - JAM_STANDAR
  else
    jamLembur := 0;
  uangLembur := jamLembur * TARIF_LEMBUR; // Menghitung total uang lembur

  bonus := 0;
  if (golongan = 'C') and (jamKerja > BATAS_BONUS_C) then // Khusus golongan C dan jam kerja lebih dari 50
    bonus := BONUS_C;

  totalGaji := gajiPokok + uangLembur + bonus; // Menghitung total gaji akhir

// Menampilkan hasil 
  writeln;
  writeln('RINCIAN GAJI');
  writeln('Golongan      : ', golongan);
  writeln('Jam kerja     : ', jamKerja, ' jam (lembur ', jamLembur, ' jam)');
  writeln('Gaji Pokok    : Rp', gajiPokok);
  writeln('Uang Lembur   : Rp', uangLembur);
  writeln('Bonus         : Rp', bonus);
  writeln('Total Gaji    : Rp', totalGaji);
end.
