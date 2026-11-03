{ pkgs, inputs, ... }:
{

  home.packages = with pkgs; [

    libnotify
    wallust

    swayimg
    mpv
    nautilus
 ];

}
