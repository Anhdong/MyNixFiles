{ config, pkgs, ... }:

{
  imports = [
    ./sync_config.nix
    ./desktop.nix
    ./swayidle.nix
    ./swaylock.nix
    ./dev.nix
    ./fonts.nix
    ./nvim.nix
    ./helium.nix
    ./tui.nix
    ./shell.nix
    ./media.nix
    ./gammastep.nix
  ];
}
