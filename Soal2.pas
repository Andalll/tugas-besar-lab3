{
  [SOAL 2] Sistem Verifikasi Kata Sandi (Login)
  Menggunakan repeat-until dan break.
  - Kata sandi rahasia disimpan internal: 'pascal123'
  - Maksimal 3 kali percobaan
  - Jika benar  : "Login Berhasil! Selamat Datang" lalu hentikan loop (break)
  - Jika gagal 3 kali : "Akses Ditolak! Akun Terkunci."
}
program SistemLogin;

const
  KATA_SANDI = 'pascal123';  { kata sandi rahasia internal }
  MAX_COBA   = 3;            { batas maksimal percobaan }

var
  inputSandi : string;
  percobaan  : integer;
  berhasil   : boolean;

begin
  percobaan := 0;
  berhasil  := false;

  writeln('=== SISTEM LOGIN ===');

  repeat
    percobaan := percobaan + 1;
    write('Masukkan kata sandi (percobaan ', percobaan, '/', MAX_COBA, '): ');
    readln(inputSandi);

    if inputSandi = KATA_SANDI then
    begin
      berhasil := true;
      break;  { hentikan loop seketika karena sandi benar }
    end
    else
      writeln('Kata sandi salah!');

  until percobaan >= MAX_COBA;  { ulangi sampai batas percobaan habis }

  writeln;
  if berhasil then
    writeln('Login Berhasil! Selamat Datang')
  else
    writeln('Akses Ditolak! Akun Terkunci.');
end.
