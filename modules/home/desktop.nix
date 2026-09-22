{ pkgs, inputs, ... }:
{
  imports = [ inputs.mangobar.homeManagerModules.default ];


  home.packages = with pkgs; [
    inputs.mangobar.packages.${pkgs.system}.mangobar
    fuzzel
    mako
    libnotify
    swaybg
    swaylock
    swayidle
    wallust

    inputs.pond.packages.${pkgs.system}.default

    grim
    slurp
    satty

    wl-clipboard
    cliphist

    imv
    mpv
    zathura
    nautilus

    xdg-desktop-portal
    xdg-desktop-portal-gtk
    xdg-desktop-portal-wlr
    gnome-keyring
    polkit_gnome

  ];

  #Apply dark theme to gtk
  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
  };
};

}
