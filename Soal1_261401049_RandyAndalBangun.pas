program TotalBelanjaTokoBuku;

{ Program menghitung total belanjaan N barang,
  menentukan diskon berdasarkan total, dan
  menampilkan rincian belanja serta total bayar akhir }

uses crt;

var
  N, i       : integer;          { N = jumlah barang, i = counter loop }
  harga      : real;             { harga barang ke-i }
  total      : real;             { total belanja sebelum diskon }
  persenDiskon : real;           { besaran diskon dalam persen }
  besarDiskon  : real;           { nominal diskon (Rp) }
  totalBayar   : real;           { total bayar setelah diskon }

begin
  clrscr;
  writeln('=== Program Total Belanja Toko Buku ===');
  writeln;

  { 1. Minta jumlah barang yang dibeli }
  write('Masukkan jumlah barang (N): ');
  readln(N);

  { 2. Input harga barang ke-1 s/d ke-N dengan for-to-do }
  total := 0;
  for i := 1 to N do
  begin
    write('Harga barang ke-', i, ' : Rp');
    readln(harga);
    total := total + harga;
  end;

  { 3. Tentukan diskon dengan if-else }
  if total < 100000 then
    persenDiskon := 0                       { diskon 0% }
  else if total < 500000 then
    persenDiskon := 10                      { diskon 10% }
  else
    persenDiskon := 20;                     { diskon 20% }

  besarDiskon := total * persenDiskon / 100;
  totalBayar  := total - besarDiskon;

  { 4. Tampilkan rincian belanja }
  writeln;
  writeln('========== RINCIAN BELANJA ==========');
  writeln('Total sebelum diskon : Rp', total:0:2);
  writeln('Diskon               : ', persenDiskon:0:0, '%  (Rp', besarDiskon:0:2, ')');
  writeln('Total bayar akhir    : Rp', totalBayar:0:2);
  writeln('=====================================');

  readln;
end.
