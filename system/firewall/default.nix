{
  config,
  pkgs,
  lib,
  ...
}: {
  networking = {
    firewall = {
      enable = true;
      allowPing = true;
      allowedTCPPorts = [
        # syncthing
        8384
        22000
      ];
      allowedUDPPorts = [
        22000
        21027
      ];
      allowedTCPPortRanges = [
        {
          # kde-connect
          from = 1714;
          to = 1764;
        }
      ];
      allowedUDPPortRanges = [
        {
          from = 1714;
          to = 1764;
        }
      ];
    };
  };
}
