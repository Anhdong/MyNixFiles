{ config, pkgs, ... }:

{
  imports = [
    ./sync_config.nix
    ./desktop.nix
    ./mangobar.nix
    ./rofi.nix
    ./gtk.nix
    ./fonts.nix
    ./awww.nix
    ./hypridle.nix
    ./dev.nix
    ./nvim.nix
    ./zen_browser.nix
    ./tui.nix
    ./shell.nix
    ./others.nix
    ./gammastep.nix
  ];
}
