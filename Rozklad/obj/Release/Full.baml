   M S B A M L   `   `   `  ���� B  >Rozklad, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:RozkladRozklad      Rozklad.Full   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     'localclr-namespace:Rozklad       � WindowStartupLocation$  CenterScreen=� � Title$
 Full��$	��550��$	��725��.���    
Background#��[   � RowDefinitions �� $
��444* ��� $	��14* ��� $	��57* ��� $��4* � � ColumnDefinitions �� $��5* ��� $
��711* ��� .+�&   System.Windows.Controls.DataGrid  -     Name$ Rozklad�� J� RenderTransformOrigin$ 	0.51,0.49&�$��0,5,0,0q�   AutoGenerateColumns .  $��1��$��2��   
IsReadOnly .    AlternatingRowBackground
 �����  DataGrid#��[ $��20(�	   Columns	 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn
   Header$
 First Station��1  +System.Windows.Controls.DataGridBoundColumn   Binding �� *StacjaPoczatkowa+  $
 Departure time�� �� *GodzinaOdjazdu+  $
 Final Station�� �� *StacjaKoncowa+  $
 Hour of arrival�� �� *GodzinaPrzyjazdu+  $
 Indirect Stations�� �� *StacjePosrednie+  $
 Driving Days�� �� *
DniJazdy+�� -   $��Return��$��0,5,0,0q�$��1��$��2��  Buttons#��[ $��36(�$��Center=�$��Disabled=�