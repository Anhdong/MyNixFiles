{ pkgs, ... }:
{
  home.packages = with pkgs; [
    waybar
    fuzzel
    mako
    libnotify
    wlsunset
    swaybg
    swaylock
    swayidle

    imv
    mpv
    zathura

    xdg-desktop-portal
    xdg-desktop-portal-gtk
    xdg-desktop-portal-wlr
    gnome-keyring
    polkit_gnome

    nautilus

  ];

}
