{ config, pkgs, ... }:
{
services.keyd = {
  enable = true;

  keyboards.default = {
    ids = [ "*" ];

    settings = {
      main = {
        capslock = "overload(capslock, esc)";
      };

      "capslock:C" = {
        h = "left";
        j = "down";
        k = "up";
        l = "right";
      };
    };
  };
};
}
