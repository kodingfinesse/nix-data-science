{pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
    with unixODBCDrivers; [
      psql
      sqlite
    ];
  };
}
