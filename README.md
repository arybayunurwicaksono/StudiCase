# StudiCase

Aplikasi Promos keranjang/kasir sederhana yang juga merupakan modifikasi aplikasi di repo sebelumnya yang juga merupakan bahan untuk UTS saya, dan sekarang memperbaiki dengan menambahkan beberapa fitur baru

# Kegunaan
- User dapat memilih, serta menghapus item pada keranjang
- User dapat memilih voucher untuk pemotongan harga

# Algoritma
 User pertama kali akan ditampilkan halaman mainwindow yang berisikan keranjang, serta subtotal dan total harga. Serta opsi untuk memilih voucher yang tersedia.
 kemudian user akan memilih item pada halaman penawaran yang kemudian item tersebut akan masuk ke dalam keranjang (user dapat menghapus item jika ada kesalahan)
 Lanjut dengan pemilihan voucher sebagai akhir dari alur aplikasi serta penggunaannya untuk pemotongan harga pada total.


        public MainWindow()
        {
            InitializeComponent();

            payment = new Payment(this);

            KeranjangBelanja keranjangBelanja = new KeranjangBelanja(payment, this);

            controller = new MainWindowController(keranjangBelanja);

            listBoxPesanan.ItemsSource = controller.getSelectedItems();
            listBoxPakaiVoucher.ItemsSource = controller.getSelectedVouchers();

            initializeView();


Disini kurang lebih baris-baris yang akan mempengaruhi jala
