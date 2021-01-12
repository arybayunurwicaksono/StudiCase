Nama  : Ary Bayu Nurwicaksono
NIM   : 19.11.2762
Kelas : 19 informatika 03


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


Disini pemanggilan intance keranjang serta listbox dari item penawaran dan voucher

        public MainWindow()
        {
            InitializeComponent();

            payment = new Payment(this);

            KeranjangBelanja keranjangBelanja = new KeranjangBelanja(payment, this);

            controller = new MainWindowController(keranjangBelanja);

            listBoxPesanan.ItemsSource = controller.getSelectedItems();
            listBoxPakaiVoucher.ItemsSource = controller.getSelectedVouchers();

            initializeView();
Disini kurang lebih baris-baris yang akan mempengaruhi jalannya progam. Dimana item akan dimasukkan kedalam listbox, juga voucher tersebut. sehingga user dapat menemukan item maupun voucher tersebut

    private void generateContentPenawaran()
    {
        Item coffeLate = new Item("Coffe Late", 30000);
        Item blackTea = new Item("BlackTea", 20000);
        Item milkShake = new Item("Milk Shake", 15000);
        Item watermelonJuice = new Item("Watermelon Juice", 25000);
        Item lemonSquash = new Item("Lemon Squash", 30000);
        Item pizza = new Item("Pizza", 75000);
        Item friedRice = new Item("Fried Rice Special", 45000);

        Penawarancontroller.addItem(coffeLate);
        Penawarancontroller.addItem(blackTea);
        Penawarancontroller.addItem(milkShake);
        Penawarancontroller.addItem(watermelonJuice);
        Penawarancontroller.addItem(lemonSquash);
        Penawarancontroller.addItem(pizza);
        Penawarancontroller.addItem(friedRice);

        listPenawaran.Items.Refresh();
    }
    
     private void generateListVoucher()
     {
         Model.Voucher awalTahun = new Model.Voucher(title: "Promo Awal Tahun Diskon 25%", discInPercent: 25);
         Model.Voucher tebusMurah = new Model.Voucher(title: "Promo Tebus Murah Diskon 30% atau max. 30.000", discInPercent: 30);
         Model.Voucher promoNatal = new Model.Voucher(title: "Promo Natal Potongan 10000", disc: 10000);

         voucherController.addItem(awalTahun);
         voucherController.addItem(tebusMurah);
         voucherController.addItem(promoNatal);

         DaftarVoucher.Items.Refresh();
     }
Item-item yg akan dilihat user dimasukkan kedalam listbox sendiri, juga dengan voucher. Setiap event yang di klik pada voucher berisi pemotongan harga secara algoritma. begitu juga dengan item-item makanan dimana setiap item ditambahkan harga akan semakin bertambah, juga saat menghapus item, harga akan mengurang.

     private void OnPilihVoucherClicked(object sender, RoutedEventArgs e)
     {
         PilihVoucher pilihVoucherWindow = new PilihVoucher();
         pilihVoucherWindow.SetOnItemSelectedListener(this);
         pilihVoucherWindow.Show();
     }
     
Button voucher yang ditekan akan memunculkan halaman baru. Yaitu daftar voucher.

     private void onButtonAddItemClicked(object sender, RoutedEventArgs e)
     {
         Penawaran penawaranWindow = new Penawaran();
         penawaranWindow.SetOnItemSelectedListener(this);
         penawaranWindow.Show();
     }
     
Button tambah yang ditekan akan memunculkan halaman baru. Yaitu daftar item penawaran

     private void listBoxPesanan_ItemClicked(object sender, MouseButtonEventArgs e)
     {
         if (MessageBox.Show("Kamu ingin menghapus item ini?",
                 "Konfirmasi", MessageBoxButton.YesNo) == MessageBoxResult.Yes)
         {
             ListBox listBox = sender as ListBox;
             Item item = listBox.SelectedItem as Item;
             controller.deleteSelectedItem(item);
         }
     }
     
Penghapusan item saat item pada list di tekan dan dikonfirmasi penghapusannya.

     public void onPriceUpdated(double subtotal,  double grantTotal, double potongan)
     {
         labelSubtotal.Content = "Rp " + subtotal;
         labelGrantTotal.Content = "Rp " + grantTotal;
         labelPromoFee.Content = "Rp " + potongan;
     }
    
Semua proses yang terjadi pada harga akan ditampilkan.
