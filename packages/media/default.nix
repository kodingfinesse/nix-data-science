{pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
    with libsForQt5; [
      movit
      obs-studio
      tenacity
    ];
  };
}
