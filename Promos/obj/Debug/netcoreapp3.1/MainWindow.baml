   M S B A M L   `   `   `  ����A  =Promos, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:PromosPromos  5   	       Promos.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   &localclr-namespace:Promos     5   	     � Title$  
MainWindow��5   	   $	��488��6   $	��764��6)   .��5	      � .+�5
   
   �� $
��Left=�6   $��
47,59,0,18q�6/   
���   �$	��498��6R   �� 5   
   $
��Left=�6   $	��154��6/   $��
572,59,0,0q�6<   
���   �$	��Top=�6_   $	��178��6w   �� 5   
   $��Kafetaria
��6   $
��Left=�6.   $��	38,20,0,0q�6I   $	��Top=�6\   �� 5   
   $��Voucher Belanja��6   $
��Left=�6*   $��
582,64,0,0q�6E   $	��Top=�6Y   $
��Bold"�6q   �� 5   
   $��Subtotal��6   $
��Left=�6#   $��377,367,0,0q�6>   $	��Top=�6S   �� 5   
   $
��Left=�6   $��572,220,0,18q�6/   
���   �$	��178��6T   �� 5   
   $��Promo��6   $
��Left=�6    $��382,391,0,0q�6;   $	��Top=�6P    J� RenderTransformOrigin$ 1.393,0.541&�6h   �� 5   
   $	��Top=�6   
�������$��0��6=   $��61,286,477,0q�6H   �� 5   
   -   5        $��labelSubtotal��5      $
��Rp 0��6   $��Right=�64   $
��Left=�6W   $��436,368,0,0q�6r   $	��Top=�6�   $��97��6�   �� 5   
   -   5         ��Name$ labelPromoFee��5      $
��Rp 0��6'   $��Right=�66   $
��Left=�6Y   $��436,391,0,0q�6t   $	��Top=�6�   $��97��6�   �� 5   
   $��Total��6   $
��Left=�6    $��572,220,0,0q�6;   $	��Top=�6P   �� 5   
   -   5        $ labelGrantTotal��5      $
��Rp 0��6)   $
��Left=�68   $��587,265,0,0q�6S   $	��Top=�6h   $
��Bold"�6�   $��22(�6�   �� 5   
   $��Item Pesanan��6   $
��Left=�6'   $��	56,64,0,0q�6B   $	��Top=�6U   $
��Bold"�6m   �� 5   
   -   5         ��Name$ listBoxPesanan��5      $��56,95,267,226q�6*   ��5      �� 5      .R�5      � $	��0,2q�6    � RowDefinitions 5      �� 5      $��25 �6,   �� 5      $��15 �6,   .+�5      �� $��0��6$    �� TextAlignment$
 Left=�6H   ��61   �� *title+6H   �� 5       $��1��6$   $
 Left=�6I   ��61   �� *price+6I   5!      5"      5$      �� 5%   
   -   5         ��Name$ buttonAddItem��5%      $��Tambah Pesanan��6(   $
��Left=�6A   $	��126��6\   $��46��6h   $	��Top=�6t   $��
56,371,0,0q�6�   
���   ���6�   Z� �� 5&   
   $��Voucher yang digunakan
��6   $
��Left=�6;   $��
56,239,0,0q�6V   $	��Top=�6j   $
��Bold"�6�   �� 5'   
   -   5        $ listBoxPakaiVoucher��5'      $��56,265,267,120q�6/   ��5(      �� 5)      .R�5*      � $	��0,2q�6   .+�5+      �� $��0��6$   $
 Left=�6H   ��61   �� *title+6H   5,      5-      5/      �� 50   
   $<��6Gunakan Voucher dan
dapatkan potongan harga
menarik!��6   $
��Left=�6a   $��
582,98,0,0q�6|   $	��Top=�6�   $��Normal"�6�   $	��165��6�   $��61��6�   �� 51   
   -   5        $ PilihVoucher��51      $��Pilih Voucher��6'   $
��Left=�6?   $��587,164,0,0q�6Z   $	��Top=�6o   $	��150��6�   $��35��6�   
���   ���6�   Z� 6�   52      53      