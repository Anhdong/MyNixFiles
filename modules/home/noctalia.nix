{ inputs, ... }:
{
  imports = [inputs.noctalia.homeModules.default];

  programs.noctalia = {
    enable = true;

    settings = { 
      wallpaper = {
        enabled = true;
        default.path = "~/Pictures/Wallpapers/";
      };
    };

  };

}
