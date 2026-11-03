{ config, pkgs, ... }:
{
  imports = [
    ./sync_config.nix
    ./noctalia.nix
    ./desktop.nix
    ./portal.nix
    ./gtk.nix
    ./fonts.nix
    ./dev.nix
    ./nvim.nix
    ./zen_browser.nix
    ./tui.nix
    ./shell.nix
    ./others.nix
  ];
}
