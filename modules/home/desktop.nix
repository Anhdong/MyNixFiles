{ pkgs, ... }:
{
  home.packages = with pkgs; [
    waybar
    fuzzel
    wlsunset
    swaybg
    swaylock
    swayidle

    imv
    mpv
    zathura

    xdg-desktop-portal
    xdg-desktop-portal-gtk
    gnome-keyring
    polkit_gnome

    nautilus

  ];

}
