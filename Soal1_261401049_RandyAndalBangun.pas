program TotalBelanjaTokoBuku;
uses crt;

var
  N, i       : integer;          // N = jumlah barang, i = counter loop 
  harga      : real;             // harga barang ke-i 
  total      : real;             // total belanja sebelum diskon 
  persenDiskon : real;           // besaran diskon dalam persen 
  besarDiskon  : real;           // nominal diskon
  totalBayar   : real;           // total bayar setelah diskon 

begin
  clrscr;
  writeln('Program Total Belanja Toko Buku');
  writeln;

  // Menerima jumlah barang yang dibeli 
  write('Masukkan jumlah barang: ');
  readln(N);

  // Input harga barang ke-1 sampai  ke-N sesuai dengan input menggunakan for
  total := 0;
  for i := 1 to N do
  begin
    write('Harga barang ke-', i, ' : Rp');
    readln(harga);
    total := total + harga;
  end;

  // Tentukan diskon dengan if-else 
  if total < 100000 then
    persenDiskon := 0                       // diskon 0% jika total dibawah dari Rp100.000
  else if total < 500000 then
    persenDiskon := 10                      // diskon 10% jika total dibawah dari Rp500.000
  else
    persenDiskon := 20;                     // diskon 20% jika total lebih dari Rp500.000

  besarDiskon := total * persenDiskon / 100;
  totalBayar  := total - besarDiskon;

  // Tampilkan rincian belanja 
  writeln;
  writeln('RINCIAN BELANJA');
  writeln('Total sebelum diskon : Rp', total:0:2);
  writeln('Diskon               : ', persenDiskon:0:0, '%  (Rp', besarDiskon:0:2, ')');
  writeln('Total bayar akhir    : Rp', totalBayar:0:2);

  readln;
end.
