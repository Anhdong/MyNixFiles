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

    lazygit
    eza
    bat
    zoxide

  ];

}
