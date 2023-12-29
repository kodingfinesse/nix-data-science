{pkgs, ...}: {
  environment = {
    systemPackages = with pkgs; [
      clang
      clang-tools
      clazy
      cmake
      cppcheck
      gdb
      gnumake
    ];
  };
}
