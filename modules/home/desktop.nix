{ pkgs, inputs, ... }:
{

  home.packages = with pkgs; [
    fsel
    mako
    libnotify
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

    imv
    mpv
    nautilus
 ];

}
