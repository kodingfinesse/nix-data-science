{pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
    with libsForQt5; [
      heaptrack
      kdev-python
      kdevelop
    ];
  };
}
