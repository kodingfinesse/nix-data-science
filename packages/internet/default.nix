{pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
    with libsForQt5; [
      tdesktop
      zulip
    ];
  };
}
