   M S B A M L   `   `   `  ����B  >Rozklad, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:RozkladRozklad  5   	       Rozklad.Full   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:Rozklad     5   	     � WindowStartupLocation$  CenterScreen=�5   	    � Title$
 Full��5	   	   $	��550��6   $	��725��6#   .��5
      �    
Background#��[  6    � RowDefinitions 5   
   �� 5      $
��444* �6   �� 5      $	��14* �6   �� 5      $	��57* �6   �� 5      $��4* �6    � ColumnDefinitions 5   
   �� 5      $��5* �6   �� 5      $
��711* �6   �� 5      .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ Rozklad��5       J� RenderTransformOrigin$ 	0.51,0.49&�6&   $��0,5,0,0q�6H      AutoGenerateColumns .  $��1��6u   $��2��6�      
IsReadOnly .    AlternatingRowBackground
 �����  DataGrid#��[ 6�   $��20(�6�   	   Columns	 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn
   Header$
 First Station��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6?   �� *StacjaPoczatkowa+  5      $
 Departure time��6%    6?   �� *GodzinaOdjazdu+  5      $
 Final Station��6%    6?   �� *StacjaKoncowa+  5      $
 Hour of arrival��6%    6A   �� *GodzinaPrzyjazdu+  5      $
 Indirect Stations��6%    6C   �� *StacjePosrednie+  5      $
 Driving Days��6%    6=   �� *
DniJazdy+5      �� 5    
   -   5        $��Return��5       $��0,5,0,0q�6#   $��1��6E   $��2��6U     Buttons#��[ 6b   $��36(�6�   $��Center=�6�   $��Disabled=�6�   5!      5"      