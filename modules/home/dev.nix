{ pkgs, ... }:
{
  home.packages = with pkgs; [
    foot
    vim
    neovim
    starship
    git
    gh
    vscodium
  ];

}
