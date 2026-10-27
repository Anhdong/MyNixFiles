{ pkgs, inputs, ... }:
{

  home.packages = with pkgs; [

    rofi
    mako
    libnotify
    wlogout
    wallust

    grim
    slurp
    satty

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
