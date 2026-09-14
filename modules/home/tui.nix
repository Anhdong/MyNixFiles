{ pkgs, ... }:
{
  home.packages = with pkgs; [
    fastfetch
    btop
    yazi
    
    impala
    bluetuith
    pulsemixer
    brightnessctl
    playerctl

    lazygit
    eza
    bat
    zoxide

  ];

}
