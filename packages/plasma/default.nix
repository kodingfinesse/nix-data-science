{pkgs, ...}: {
  environment = {
    systemPackages = with pkgs;
    with libsForQt5; [
      # tools
      akonadi
      ark
      dragon
      filelight
      kamoso
      kasts
      kate
      kbibtex
      kcalc
      kdenlive
      kdiff3
      kfind
      kget
      kgpg
      kile
      kmplot
      korganizer
      ktorrent
      ktouch
      labplot
      neochat
      qttools
      quazip
      semantik
      syncthingtray
      tokodon
      umbrello
      wacomtablet

      # integration
      kaccounts-integration
      kaccounts-providers
      kio-gdrive
    ];
  };
}
