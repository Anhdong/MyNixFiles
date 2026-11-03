{ config, pkgs, inputs, ... }:

{
  imports = [
    ./boot.nix
    ./audio.nix
    ./graphic.nix
    ./keyboard.nix
    ./xremap.nix
    ./network.nix
    ./bluetooth.nix
    ./power.nix
    ./timezone_locale.nix
    ./polkit.nix
    ./keyring.nix
    ./compat.nix
    ./display_manager.nix
    ./storage.nix
    ./mysql.nix
    ];
}
