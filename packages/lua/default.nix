{pkgs, ...}: {
  environment = {
    systemPackages = with pkgs; [
      luajit
      luaformatter
      z-lua
    ];
  };
}
