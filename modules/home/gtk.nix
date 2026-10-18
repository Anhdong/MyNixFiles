{ pkgs, ... }:
{
  home.packages = with pkgs; [
    hicolor-icon-theme
    adwaita-icon-theme
  ];

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      font-antialiasing = "rgba";
      font-hinting = "slight";
    };
    "org/gnome/desktop/privacy" = {
      remember-recent-files = false; 
    };
  };

  gtk = {
    enable = true;
    iconTheme = {
      name = "hicolor-icon-theme";
      package = pkgs.hicolor-icon-theme;
    };
  };
}
