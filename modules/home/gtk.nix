{ pkgs, ... }:
{
  home.packages = with pkgs; [
    #Default gtk icon
    hicolor-icon-theme
    adwaita-icon-theme
  ];

  gtk = {
    enable = true;
    theme = {
        name = "Adwaita-dark";
        package = pkgs.gnome-themes-extra;
    };
    iconTheme = {
        name = "Papirus-Dark";
        package = pkgs.papirus-icon-theme.override { color = "black"; };
    };
  };
  home.pointerCursor = {
    enable = true;
    gtk.enable = true;
    x11.enable = true;
    name = "Bibata-Modern-Classic";
    package = pkgs.bibata-cursors;
    size = 24;
  };
  #Apply dark theme to gtk
  dconf.settings = {
      "org/gnome/desktop/interface" = {
        color-scheme = "prefer-dark";
        gtk-theme = "Adwaita-dark";
        font-antialiasing = "rgba";
        font-hinting = "slight";
      };

    "org/gnome/desktop/privacy" = {
      remember-recent-files = false; 
    };
  };
} 
