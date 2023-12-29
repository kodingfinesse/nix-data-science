{pkgs, ...}: {
  environment = {
    systemPackages = with pkgs; [
      anki
      isoimagewriter
      keepassxc
      media-downloader
      persepolis
      qgit
      qvge
      vym
    ];
  };
}
