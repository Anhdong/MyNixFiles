{ config, pkgs, ... }:

{
  imports = [
    ./sync_config.nix
    ./desktop.nix
    ./mangobar.nix
    ./gtk.nix
    ./awww.nix
    ./hypridle.nix
    ./dev.nix
    ./fonts.nix
    ./nvim.nix
    ./zen_browser.nix
    ./tui.nix
    ./shell.nix
    ./others.nix
    ./gammastep.nix
  ];
}
