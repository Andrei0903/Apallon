   M S B A M L   `   `   `  ����C  ?Apallon1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:NavigationDrawerPopUpMenu2NavigationDrawerPopUpMenu2  5   	   +    %NavigationDrawerPopUpMenu2.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   :local(clr-namespace:NavigationDrawerPopUpMenu2     5   	   b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   $	��600��5      $
��1080��6'   
�������  � 
ResizeMode$  NoResize=�6G    � WindowStartupLocation$ CenterScreen=�6]    � WindowStyle$
 None=�6�    � Icon$  img/аполлон (1).png��6�    � 	Resources 5	         OpenMenu �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value  	CloseMenu��%�  &	        &	 �     �� 5
   
   .��5      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5        $ 0��6'   $ 70Q�63     5      $ 0:0:0.5��6'   $	 200Q�69   5      5      �� 5   
   .��5      U� $ (FrameworkElement.Width)�6,   $ GridMenu��6a   .\�5        $ 0��6'   $	 200Q�63     5      $ 0:0:0.5��6'   $ 70Q�69   5      5      5      	 � Triggers	 5      :� 5   
   
 :� RoutedEvent$
 ButtonBase.Click��6    :� 
SourceName$ ButtonOpenMenu��66   .[�5      �� #��[  6   5      :� 5   
   $
 ButtonBase.Click��6   $ ButtonCloseMenu��66   .[�5      �� #��[ 6   5      .��5      � ���	#FFDEDEDE.+�5    
   � -   5        $��GridMain��5       $��Right=�6   $��Bottom=�6;   $	��540��6V   $
��1010��6c   $��	0,0,10,-5q�6p    � 5!   
   -   5        $��	MainFrame��5!   -   $��2��6   $��2��6     � NavigationUIVisibility$ Hidden=�6j   � 5"   
   -   5         �Name$ header_main��5"   f   $��60��6   $	��Top=�6   ���	#FF5C99D6 J� Effect 5#      3  -System.Windows.Media.Effects.DropShadowEffect  5$         
BlurRadius$ 1Q�6#      ShadowDepth$ 1Q�62      Color$ 	#FFACACAC��6B   .+�5&      ��  �� Orientation$ 
Horizontal=�6   $��Right=�62   .+�5'      �� $��
Гость��6   $��Center=�6)   $��16(�6D   '  !MaterialDesignThemes.Wpf.PopupBox  5(         PlacementMode$ BottomAndAlignRightEdges=�6*      	StaysOpen .  $��10q�6e      PopupContent. 5)      �� $	��150��6!   .+�5*      �� -   5        $��btn_prof_go��5*   3   $��Профиль��6!   6F   �� 5+      -   5        $��btn_help_go��5+   2   $��Помощь��6!   6E   o� 5,      .@�5-      m� $��	Темы ��6'   .@�5.   "   m� -   5        $��btn_theme_dark��5.   ;   $��Темная��6+   6Q   m� 5/   "   -   5        $��btn_theme_Light��5/   <   $��Светлая��6+   6S   m� 50   "   -   5        $��btn_theme_red��50   <   $��Красный��6+   6Q   m� 51   "   -	   5        $��btn_thenme_blue��51   ;   $��
Синий��6+   6R   52      53      �� 54      -
   5        $��	btn_close��54   3   $��Закрыть��6!   6D   �� 55      �� 56      -   5        $��btn_go_LoginEnterPage��56   7   $��Авторизация��6!   6T   57      58      59      �� 5:      $��Center=�6   $��Center=�65   $��22(�6P   $+��%Супермаркет Апаллон��6^   5;      � 5<   
   -   5        $ GridMenu��5<      $��70��6!   $
��Left=�6,   ���	#FF31577E 5=        5>      $ 2Q�6#   $ 1Q�62   $ 	#FFAEAEAE��6B   .+�5@      �� .+�5A      � -   5        $��	hamburger��5A      $	��130��6)   ���#FFF J� RenderTransformOrigin$ 0.5,0.5&�6H   z�5B      V� 5C      .~�5D      �� �� 5E      �� 5F      T� 5G      5H      .+�5K      �� -   5         ��Name$ ButtonOpenMenu��5K      $��60��65   $��60��6A   $��5q�6L   $��Right=�6W   $	��Top=�6s    0 ,MaterialDesignFloatingActionMiniAccentButton#��[ 6�   ���	#FF31577E��6�   Z� ��6�   Z� .��5L      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$
 Menu=�62   $��25��6>   $��25��6I   5M      �� 5N      -   5        $ ButtonCloseMenu��5N      $y�	Collapsed=�66   $��60��6M   $��60��6Y   $��5q�6d   $��Right=�6o   $	��Top=�6�   #��[ 6�   ���	#FF31577E��6�   Z� ��6�   Z� .��5O        $ 	ArrowLeft=�62   $��25��6C   $��25��6N   5P      �� 5R      $��71��6   $��Bottom=�6(   $ ��img/аполлон (1).png��6C   5S      �� 5T      -   5         ��Name$ ListViewMenu��5T      ���	#FF5C99D6$��Disabled=�6H   .@�5U      �� -   5         ��Name$ ItemHome��5U   #   $��60��65   .��5V      �� $ 
Horizontal=�6%   .+�5W        -   5        $��user_profil_go��5W   6   $ account=�6q   $��25��6�   $��25��6�   $��10q�6�   �� 5X      $��Профиль��6(   $��Center=�67   $��20 10q�6R   5Y      5Z      �� 5[      -   5        $ 
ItemCreate��5[   #   $��60��67   .��5\      �� $ 
Horizontal=�6%   .+�5]        $ basket=�66   $��25��6D   $��25��6P   $��10q�6[   �� 5^      $��Корзина��6(   $��Center=�67   $��20 10q�6R   5_      5`      �� 5a      $��60��6#   .��5b      �� $ 
Horizontal=�6%   .+�5c        $
 sale=�66   $��25��6B   $��25��6N   $��10q�6Y   �� 5d      $��Скидки��6(   $��Center=�66   $��20 10q�6R   5e      5f      �� 5g      $��60��6#   .��5h      �� $ 
Horizontal=�6%   .+�5i        $ support=�66   $��25��6E   $��25��6Q   $��10q�6\   �� 5j      $ ��Тех. Поддержка��6(   $��Center=�6>   $��20 10q�6Z   5k      5l      �� 5m      $��60��6#   .��5n      �� -   5        $��clic_btn_category��5n   >   $ 
Horizontal=�6%   .+�5o        $ shape=�66   $��25��6C   $��25��6O   $��10q�6Z   �� 5p      $��Категории ��6(   $��Center=�6:   $��20 10q�6V   5q      5r      �� 5s      $��60��6#   .��5t      �� -   5        $��
btn_back_f��5t   ?   $ 
Horizontal=�6%   .+�5u        $ 
Backburger=�66   $��25��6H   $��25��6T   $��10q�6_   �� 5v      $��
Назад��6(   $��Center=�65   $��20 10q�6Q   5w      5x      5y      5z      5{      5|      5}      