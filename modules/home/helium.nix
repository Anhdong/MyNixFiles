{ config, pkgs, inputs, ... }:

{
  imports = [
    inputs.helium-flake.homeModules.default
  ];

  programs.helium = {
    enable = true;

    flags = [
      "--disable-gpu"
      "--ozone-platform-hint=auto"
    ];

    policies = {
      "BrowserSignin" = 0;
      "PasswordManagerEnabled" = false;
      "SyncDisabled" = true;
      "SpellcheckEnabled" = true;
      "SpellcheckLanguage" = [ "en-US" ];
    };
  };
}
