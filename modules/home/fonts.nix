{ pkgs, config, ... }:
{
  fonts.fontconfig = {
      enable = true;
      defaultFonts = {
        sansSerif = [ "SUSE" ];
        serif = [ "SUSE" ];
        monospace = [ "JetBrainsMono Nerd Font" ];
        emoji = [ "Noto Color Emoji" ];
      };
  };

  home.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
    noto-fonts-color-emoji

    #Pull SUSE font from google font
    (pkgs.google-fonts.override { fonts = [ "SUSE" ]; }) 

    jetbrains-mono
    nerd-fonts.jetbrains-mono
  ];
}
