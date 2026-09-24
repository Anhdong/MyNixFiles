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
