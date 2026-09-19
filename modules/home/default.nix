{ config, pkgs, ... }:

{
  imports = [
    ./sync_config.nix
    ./desktop.nix
    ./dev.nix
    ./fonts.nix
    ./helium.nix
    ./tui.nix
    ./bash.nix
    ./media.nix
  ];
}
