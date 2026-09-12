{ config, pkgs, ... }:
{
  # Set up FCITX 5
  i18n.inputMethod = {
    enable = true;
    type = "fcitx5";

    fcitx5 = {
      waylandFrontend = true;

      addons = with pkgs; [
	qt6Packages.fcitx5-unikey
        fcitx5-gtk
      ];
    };
  };
  
  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

}
