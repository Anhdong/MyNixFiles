{ config, pkgs, inputs, ... }:

{
  imports = [
    ./audio.nix
    ./keyboard.nix
    ./network.nix
    ./bluetooth.nix
    ./power.nix
    ./sddm.nix
    ./timezone_locale.nix
    ];
}
