{ config, pkgs, inputs, ... }:

{
  imports = [
    inputs.helium-flake.homeModules.default
  ];

  programs.helium = {
    enable = true;

    flags = [
      "--ozone-platform-hint=auto"
    ];

    policies = {
      "BrowserSignin" = 0;
      "PasswordManagerEnabled" = false;
      "SyncDisabled" = true;
      "SpellcheckEnabled" = false;
    };
  };
}
