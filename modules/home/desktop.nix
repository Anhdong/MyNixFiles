{ pkgs, inputs, ... }:
{
  imports = [ inputs.mangobar.homeManagerModules.default ];


  home.packages = with pkgs; [
    inputs.mangobar.packages.${pkgs.system}.mangobar
    fuzzel
    mako
    libnotify
    wlsunset
    swaybg
    swaylock
    swayidle

    grim
    slurp

    wl-clipboard
    cliphist

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

  #Apply dark theme to gtk
  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
  };
};

}
