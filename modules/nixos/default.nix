{ config, pkgs, inputs, ... }:

{
  imports = [
    ./audio.nix
    ./android.nix
    ./graphic.nix
    ./keyboard.nix
    ./keyd.nix
    ./network.nix
    ./bluetooth.nix
    ./power.nix
    ./timezone_locale.nix
    ./polkit.nix
    ./pam.nix
    ./compat.nix
    ./display_manager.nix
    ./storage.nix
    ./mysql.nix
    ];
}
