{
  config,
  pkgs,
  lib,
  ...
}: let
  hostname = "nixos";
in {
  networking = {
    hostName = "${hostname}";
    networkmanager = {
      enable = true;
    };
    wireless = {
      # via wpa_supplicant.
      enable = false;
      iwd = {
        enable = false;
        settings = {
          Network = {
            EnableIPv6 = true;
            RoutePriorityOffset = 300;
          };
          Settings = {
            AutoConnect = true;
          };
        };
      };
    };
    ## Configure network proxy if necessary.
    # proxy = {
    #   default = "http://user:password@proxy:port/";
    #   noProxy = "127.0.0.1,localhost,internal.domain";
    # };
  };
}
