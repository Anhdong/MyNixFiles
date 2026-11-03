{ pkgs, inputs, ... }:
{

  home.packages = with pkgs; [

    mako
    libnotify
    wlogout
    wallust

    grim
    slurp
    satty

    hyprlock
    hyprpicker

    wl-clipboard
    cliphist

    swayimg
    mpv
    nautilus
 ];

}
