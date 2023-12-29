{
  config,
  pkgs,
  lib,
  ...
}: let
  name = "hervyqa";
  layout = "us";
in {
  services = {
    xserver = {
      enable = true;
      desktopManager = {
        plasma5 = {
          enable = true;
        };
        xterm = {
          enable = false;
        };
      };
      displayManager = {
        # session: plasma/plasmawayland
        defaultSession = "plasma";
        sddm = {
          enable = true;
          autoLogin = {
            relogin = true;
          };
          autoNumlock = true;
          settings = {
            Theme = {
              CursorTheme = "breeze_cursors";
            };
          };
          theme = "breeze";
          wayland = {
            enable = false;
          };
        };
        autoLogin = {
          enable = true;
          user = "${name}";
        };
      };
      excludePackages = with pkgs; [
        xterm
      ];
      layout = "${layout}";
      libinput = {
        enable = true;
      };
      # default settings
      videoDrivers = [
        "amdgpu"
        "radeon"
        "nouveau"
        "modesetting"
        "fbdev"
      ];
      xkbVariant = "";
    };
  };
}
