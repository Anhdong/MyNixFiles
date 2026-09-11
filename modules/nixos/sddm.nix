{ config, pkgs, ... }:

{
  services.displayManager = {
    ly.enable = true;
    ly.settings = {
      animate = true;
      animation = "dur_file";
      dur_file_path = "${../../assets/sddm/blackhole.dur}";
      full_color = true;
    };
 };
}
