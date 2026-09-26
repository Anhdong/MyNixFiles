{ pkgs, ... }:
{
  home.packages = with pkgs; [
    fastfetch
    btop
    yazi

    impala
    bluetui
    pulsemixer
    brightnessctl
    playerctl

  ];

}
