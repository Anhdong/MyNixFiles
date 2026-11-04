{ pkgs, ... }:
{
  home.packages = with pkgs; [
    fastfetch
    btop
    yazi

    brightnessctl
    playerctl

    peaclock
    cava
    lavat
    cmatrix
    pokemon-colorscripts
  ];

}
