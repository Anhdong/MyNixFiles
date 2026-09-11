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

    starship
    blesh
    lazygit
    eza
    zoxide

  ];

}
