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
    cliphist

    lazygit
    eza
    bat
    zoxide

  ];

}
