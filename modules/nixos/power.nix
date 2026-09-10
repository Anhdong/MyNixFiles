{ config, pkgs, ... }:
{
  services.tlp = {
    enable = true;
    settings = {
      TLP_AUTO_SWITCH = 1;

      TLP_PROFILE_AC = "PRF";
      TLP_PROFILE_BAT = "SAV";
    };
  };
}
