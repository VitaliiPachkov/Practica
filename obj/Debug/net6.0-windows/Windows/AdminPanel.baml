   M S B A M L   `   `   `  ����G  CPachkov_Auth, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:Pachkov_Auth.WindowsPachkov_Auth.Windows  5   	   %    Pachkov_Auth.Windows.AdminPanel   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:Pachkov_Auth.Windows     5   	   -   5          � Title$  TechNet Solutions��5      $	��600��6+   $
��1100��68   $	��600��6E   $
��1100��6U    � WindowStartupLocation$ CenterScreen=�6   .��5	      � ���#998d7a � ColumnDefinitions 5
   
   �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5      �� 5       � RowDefinitions 5   
   �� 5      �� 5      �� 5       �� 5!      �� 5"      �� 5#      �� 5$      �� 5%      .+�5+   
   �� 
�������$��6��6'   $��5��64   $��3��6D   $��10q�6X   �� 5,   
   
�������$��6��6'   $��8��64   $��3��6D   $��10q�6X   �� 5.   
   -   5        $��	UserLogin��5.      $��Привет��6%   $��40(�63   $��10��6A   $��Center=�6V   �� 5/   
   -   5        $��UsersAll��5/   B   $��1��6   $��1��6$   $��5��61   $��1��6R   $��25(�6[   $��10��6i   �� 50   
   -   5         ��Name$ EditId��50         PlaceholderTextBox#��[  6"   
 � Tag$! ID Пользователя��6O   $��6��6e   $��5��6r   $��3��6�   $��30(�6�   $��10q�6�   �� 51   
   -   5        $��EditRole��51      #��[  6"   $ Нужная роль��6O   $��6��6a   $��8��6n   $��3��6~   $��30(�6�   $��10q�6�   �� 52   
   -   5        $
��Edit��52   $   $��8��60   $��7��6@   $��10q�6M   $��3��6Y   $��Изменить��6m   $��30(�6�   �� 53   
   -   5        $��RoleBox��53      $��6��6#   $��8��60   $��3��6@   $��30(�6T   $��10q�6b   .@�54      �� $��Выбрать роль��6   �� 56      $��Admin��6   �� 58      $
��User��6   59      5:      5;      