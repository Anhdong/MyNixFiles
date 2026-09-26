{ config, pkgs, inputs, ... }:

{
  imports = [
    ./audio.nix
    ./graphic.nix
    ./keyboard.nix
    ./keyd.nix
    ./network.nix
    ./bluetooth.nix
    ./power.nix
    ./sddm.nix
    ./timezone_locale.nix
    ./polkit.nix
    ./pam.nix
    ];
}
