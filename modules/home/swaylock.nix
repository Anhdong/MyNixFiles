{ config, pkgs, ... }:
  {
  programs.swaylock = {
    enable = true;
    package = pkgs.swaylock-effects;
    
    settings = {
      # Background & Effects
      image = "~/.config/background";
      effect-blur = "15x5";         # Applies a high-quality box blur
      effect-vignette = "0.2:0.2"; # Darkens the screen edges to create a dimmed look
      
      # Font & Sizing
      font = "JetBrains Mono Bold";
      font-size = 128;          # Increases the clock text size (default is usually ~24)
      indicator-radius = 384;  # MUST be increased so the larger text doesn't get clipped
      
      # Clock Settings
      clock = true;
      indicator = true;
      indicator-idle-visible = true;
      indicator-thickness = 0;

      # Clock Formatting
      timestr = "%I:%M %p";
      datestr = "";


      # Transparent Ring Elements
      inside-color = "00000000";
      inside-clear-color = "00000000";
      inside-ver-color = "00000000";
      inside-wrong-color = "00000000";
      
      ring-color = "00000000";
      ring-clear-color = "00000000";
      ring-ver-color = "00000000";
      ring-wrong-color = "00000000";
      
      line-color = "00000000";
      line-clear-color = "00000000";
      line-ver-color = "00000000";
      line-wrong-color = "00000000";
      
      # Text colors
      text-color = "ffffffcc";  
      text-clear-color = "ffffffcc";
      text-ver-color = "ffffffcc";  
      text-wrong-color = "ff0000cc"; 
    };
  };
}
