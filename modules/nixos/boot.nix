{ config, pkgs, ... }:
{
  boot = {

    loader = {
      systemd-boot = {
        enable = true;
        consoleMode = "keep"; #prevent video mode switching
        configurationLimit = 5; #Limit boot entries
      };

      efi.canTouchEfiVariables = true;
      timeout = 0;
    };

    kernelPackages = pkgs.linuxPackages;
    kernelParams = [ "quiet" "bgrt_disable" ];
  };
}
