{
  config,
  pkgs,
  lib,
  ...
}: {
  services = {
    espanso = {
      enable = true;
    };
  };
}
