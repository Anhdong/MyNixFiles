{ pkgs, lib, inputs, ... }:
let
  waybar = inputs.waybar.packages.${pkgs.stdenv.hostPlatform.system}.waybar;
in
{
  programs.waybar = {
    enable = true;
    package = waybar.override {
      waybar = pkgs.waybar.override { cavaSupport = false; };
      };
    systemd  = {
      enable = true;
      targets = ["graphical-session.target"];
    };
  };
}
