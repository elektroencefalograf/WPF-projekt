   M S B A M L   `   `   `  ����B  >Rozklad, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:RozkladRozklad  5   	       Rozklad.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Rozklad     5   	     � WindowStartupLocation$  CenterScreen=�5   	    � Title$ Rozkład��5	   	   $	��550��6   $	��725��6&    � 	Resources 5
      ��%    5      .��5      �    
Background#��[  6    � RowDefinitions 5   
   �� 5      $��0* �6   �� 5      $	��35* �6   �� 5      $	��55* �6   �� 5      $	��35* �6   �� 5      $	��55* �6   �� 5      $	��35* �6   �� 5      $	��55* �6   �� 5      $
��120* �6   �� 5      $	��65* �6   �� 5      $	��65* �6   �� 5      $	��10* �6    � ColumnDefinitions 5   
   �� 5      $��9* �6   �� 5      $
��190* �6   �� 5      $
��513* �6   �� 5      $��8* �6   .+�5!   
   �� -   5         ��Name$ Poczatek��5!      $��1,1,0,0q�6%   $��1��66   $��2��6F   $��18(�6S   $��Center=�6a   $��Center=�6�     ComboBox#��[ 6�    �� 
IsEditable .  6�   �� 5"   
   -   5        $ Koniec��5"      $��1,3,0,0q�6$   $��1��66   $��4��6F   $��Center=�6S   $��Center=�6w   $��18(�6�   #��[ 6�    .  6�   �� 5#   
   -   5        $ Godzina��5#      $��1��6$   $��1,2,0,0q�64   $��6��6E   $��Center=�6R   $��Center=�6v   $��18(�6�   #��[ 6�    .  6�   (  "System.Windows.Controls.DatePicker  5$   
   $��1��6   $��1,5,0,0q�6%   $��7��66   �� 5%   
   -   5        $��Full timetable��5%      $��1,6,0,0q�6*   $��1��6I   $��8��6Y     Buttons#��[ 6f   $��20(�6�   $��Center=�6�   $��Center=�6�   �� 5&   
   -   5        $��Search��5&      $��1,3,0,0q�6"   $��1��63   $��9��6C   #��[ 6_   $��20(�6�   $��Center=�6�   $��Center=�6�   $��Disabled=�6�   �� 5'   
   $��First Station��6   $��1��6(   $��1��68    	 Label#��[ 6E   $%��/Rozklad;component/Font/#Trench)�6d   $��20(�6�   $��Center=�6�   �� 5(   
   $��Final Station��6   $��1��6(   $��3��68   #��[ 6E   $��20(�6d   $��Center=�6r   �� 5)   
   $
��Hour��6   $��1��6   $��5��6/   #��[ 6<   $��20(�6[   $��Center=�6i   &   System.Windows.Controls.DataGrid  5*   
   -   5          Name$ Szukany��5*      $��4,2,0,0q�6$   $��2��66   $��1��6F   $��9��6S   {�.    
IsReadOnly . 	   AutoGenerateColumns	 .  
   AlternatingRowBackground

 �����  DataGrid#��[ 6�   $��20(�6  $��Center=�6  $��Center=�6;  ��6�   ��  �� Path$ pociag�   Columns 5+      0  *System.Windows.Controls.DataGridTextColumn  5,      ,  &System.Windows.Controls.DataGridColumn   Header$ First Station��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6?   �� *StacjaPoczatkowa+  5-      $ Departure time��6%    6@   �� *GodzinaOdjazdu+  5.      $ Final Station��6%    6?   �� *StacjaKoncowa+  5/      $ Hour of arrival��6%    6A   �� *GodzinaPrzyjazdu+  50      $ Indirect Stations��6%    6C   �� *StacjePosrednie+  51      $ Driving Days��6%    6>   �� *
DniJazdy+53      54      55      