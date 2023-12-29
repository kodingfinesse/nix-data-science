{pkgs, ...}: {
  environment = {
    systemPackages = with pkgs; [
      root
    ];
  };
}
