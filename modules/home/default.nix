{ config, pkgs, ... }:

{
  imports = [
    ./desktop.nix
    ./dev.nix
    ./fonts.nix
    ./helium.nix
    ./tui.nix
    ./bash.nix
    ./media.nix
  ];
}
