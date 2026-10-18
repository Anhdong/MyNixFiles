{ pkgs, inputs, ... }:
{
  imports = [ inputs.mangobar.homeManagerModules.default ];


  home.packages = with pkgs; [
    inputs.mangobar.packages.${pkgs.system}.mangobar
    inputs.otter-launcher.packages.${pkgs.system}.default
    fsel
    mako
    libnotify
    swaybg
    swayidle
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
