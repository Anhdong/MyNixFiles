{ config, pkgs, ... }:
{

  # XWAYLAND
  programs.xwayland.enable = true;

  # AppImage
  programs.appimage = {
    enable = true;
    binfmt = true;
  };

  # Dynamically linked libraries
  programs.nix-ld = {
    enable = true;
    libraries = with pkgs; [
      libX11   
      libXrender
      libXfixes
      libXi
      libxkbcommon
      libSM
      libICE
      libGL
      vulkan-loader
      wayland
      ];
  };
}
