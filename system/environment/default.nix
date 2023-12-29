{
  config,
  pkgs,
  lib,
  ...
}: {
#   imports = [
#     ./etc.nix
#   ];
  environment = {
    etc = {
      helix.source = ./helix;
      zellij.source = ./zellij;
      "xdg/arkrc".source = ./ark/arkrc;
      "xdg/baloofilerc".source = ./baloo/baloofilerc;
      "xdg/baloorc".source = ./baloo/baloorc;
      "xdg/gwenviewrc".source = ./gwenview/gwenviewrc;
      "xdg/katerc".source = ./kate/katerc;
      "xdg/kateschemarc".source = ./kate/kateschemarc;
      "xdg/kcminputrc".source = ./kcminput/kcminputrc;
      "xdg/kgetrc".source = ./kget/kgetrc;
      "xdg/kmail2rc".source = ./kmail/kmail2rc;
      "xdg/korgacrc".source = ./korganizer/korgacrc;
      "xdg/kritarc".source = ./krita/kritarc;
      "xdg/krunnerrc".source = ./krunner/krunnerrc;
    };
    plasma5 = {
      excludePackages = with pkgs;
      with libsForQt5; [
        kwrited
        oxygen
        plasma-browser-integration
        plasma-workspace-wallpapers
      ];
    };
    sessionVariables = {
      EDITOR = "hx";
      NIXOS_OZONE_WL = "1";
      MOZ_ENABLE_WAYLAND = "1";
      QTWEBENGINE_CHROMIUM_FLAGS = "--force-dark-mode";
    };
    unixODBCDrivers = with pkgs;
    with unixODBCDrivers; [
      mariadb
      psql
      sqlite
    ];
  };
}
