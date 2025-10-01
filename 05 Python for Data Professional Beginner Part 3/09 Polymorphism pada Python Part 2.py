class Karyawan:  # Definisikan class Karyawan (sebagai base class)
    nama_perusahaan = 'ABC' 
    insentif_lembur = 250000
    def __init__(self, nama, usia, pendapatan): 
        self.nama = nama
        self.usia = usia 
        self.pendapatan = pendapatan 
        self.pendapatan_tambahan = 0
    def lembur(self):
        self.pendapatan_tambahan += self.insentif_lembur 
    def tambahan_proyek(self, insentif_proyek):
        self.pendapatan_tambahan += insentif_proyek 
    def total_pendapatan(self):
        return self.pendapatan + self.pendapatan_tambahan
# Buat class turunan (sebagai inherit class) dari class karyawan, # yaitu class AnalisData
class AnalisData(Karyawan):
    def __init__(self, nama, usia, pendapatan): 
        super().__init__ (nama, usia, pendapatan)
    def lembur(self):       # mendefinisikan kembali fungsi lembur() pada class AnalisData 
        super().lembur()  # memanggil fungsi lembur pada class Karyawan 
        # pendapatan tambahan pada class AnalisData sebesar
        # 5 % dari pendapatannya.
        self.pendapatan_tambahan += int(self.pendapatan * 0.05)
aksara = AnalisData('Aksara', 25, 8500000)  # Buat objek karyawan yang bekerja sebagai AnalisData
aksara.lembur()
print(aksara.total_pendapatan())