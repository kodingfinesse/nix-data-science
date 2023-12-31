{
  config,
  pkgs,
  lib,
  ...
}: let
  name = "hervyqa";
in {
  security = {
    rtkit = {
      enable = true;
    };
    pam.services.kwallet = {
      name = "kwallet";
      enableKwallet = true;
    };
    sudo = {
      enable = true;
      wheelNeedsPassword = false;
    };
    doas = {
      enable = true;
      extraRules = [
        {
          users = ["${name}"];
          groups = ["wheel"];
          keepEnv = true;
          noPass = true;
        }
      ];
      wheelNeedsPassword = false;
    };
  };
}
