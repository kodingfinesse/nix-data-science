{pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
    with libsForQt5; [
      dbeaver
      sqlitebrowser
    ];
  };
}
