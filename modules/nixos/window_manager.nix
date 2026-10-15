{ config, pkgs, ... }:

{  
    programs.mango.enable = true;
    programs.wayfire = {
      enable = true;
      plugins = with pkgs.wayfirePlugins; [
	wcm
	wf-shell
	wayfire-plugins-extra
      ];
    };
}
