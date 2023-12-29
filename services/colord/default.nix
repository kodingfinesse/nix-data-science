{
  config,
  pkgs,
  lib,
  ...
}: {
  services = {
    colord = {
      enable = false;
    };
  };
}
