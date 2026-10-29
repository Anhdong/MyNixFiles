{ config, pkgs, inputs, ... }:
{
imports = [inputs.xremap.nixosModules.default];
services.xremap = {
  enable = true;
  withWlroots = true;
  watch = true;           # pick up newly plugged keyboards
  config = {
    modmap = [{
      name = "CapsLock tap/hold";
      remap.CapsLock = {
        alone = "Esc";
        held = "CapsLock";           # keeps it acting as a (virtual) modifier
        alone_timeout_millis = 200;
      };
    }];

    virtual_modifiers = [ "CapsLock" ];

    keymap = [
      {
        name = "Caps + hjkl arrows";
        remap = {
          CapsLock-h = "Left";
          CapsLock-j = "Down";
          CapsLock-k = "Up";
          CapsLock-l = "Right";
        };
      }
    ];
  };
};
}
