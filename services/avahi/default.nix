{
  config,
  pkgs,
  lib,
  ...
}: {
  services = {
    avahi = {
      enable = false;
      nssmdns4 = true;
    };
  };
}
