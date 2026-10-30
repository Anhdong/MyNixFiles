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

    xdg-desktop-portal
    xdg-desktop-portal-gtk
    xdg-desktop-portal-wlr
    gnome-keyring
    polkit_gnome

    swayimg
    mpv
    nautilus
 ];

}
