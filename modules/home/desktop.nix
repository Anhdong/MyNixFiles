{ pkgs, inputs, ... }:
{

  home.packages = with pkgs; [

    wallust

    brave-origin
    swayimg
    mpv
    nautilus
 ];

}
