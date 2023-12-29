{
  config,
  pkgs,
  lib,
  ...
}: {
  xdg = {
    portal = {
      enable = true;
      lxqt = {
        enable = false;
        styles = with pkgs;
        with libsForQt5; [
          qtstyleplugin-kvantum
          breeze-qt5
          qtcurve
        ];
      };
      wlr = {
        enable = false;
      };
      extraPortals = with pkgs; [
        xdg-desktop-portal-gtk
        xdg-desktop-portal-wlr
      ];
    };
  };
}
