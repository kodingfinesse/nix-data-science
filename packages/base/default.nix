{pkgs, ...}: {
  environment = {
    systemPackages = with pkgs; [
      babelfish
      bat
      clinfo
      direnv
      dmidecode
      duf
      efibootmgr
      exiftool
      fastfetch
      ffmpeg
      ghostscript
      git
      glxinfo
      helix
      imagemagick
      inxi
      joshuto
      jq
      lshw
      marksman
      mediainfo
      odt2txt
      pandoc
      scour
      scrcpy
      tmux
      translate-shell
      upterm
      ventoy
      vulkan-tools
      w3m
      wayland-utils
      wget
      wl-clipboard
      xclip
      xlsx2csv
      zellij
    ];
  };
}