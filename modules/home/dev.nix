{ pkgs, ... }:
{
  home.packages = with pkgs; [
    foot
    git
    gh
    vscodium

    #Compile tools
    gcc
    python3
    nodejs
  ];

}
