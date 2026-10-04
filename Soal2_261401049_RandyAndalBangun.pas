program SistemLogin;

const // Membuat konstanta untuk sandi dan batas percobaan
  KATA_SANDI = 'pascal123'; // Kata sandi rahasia internal
  MAX_COBA   = 3; // Batas maksimal percobaan login

var
  inputSandi : string; // Variabel untuk menyimpan input kata sandi user
  percobaan  : integer; // Variabel untuk menghitung jumlah percobaan
  berhasil   : boolean; // Variabel penanda apakah login berhasil

begin
  percobaan := 0; // Inisialisasi jumlah percobaan
  berhasil  := false; // Status login awalnya gagal

  writeln('=== SISTEM LOGIN ===');

  repeat
    percobaan := percobaan + 1; // Menambah jumlah percobaan setiap kali user mencoba
    write('Masukkan kata sandi (percobaan ', percobaan, '/', MAX_COBA, '): ');
    readln(inputSandi);

    if inputSandi = KATA_SANDI then // Jika kata sandi benar, login berhasil
    begin
      berhasil := true;
      break; // Hentikan loop karena sandi sudah benar
    end
    else
      writeln('Kata sandi salah!');

  until percobaan >= MAX_COBA; // Ulangi sampai percobaan mencapai batas maksimal

  writeln;
  if berhasil then // Menampilkan status akhir login
    writeln('Login Berhasil! Selamat Datang')
  else
    writeln('Akses Ditolak! Akun Terkunci.');
end.
