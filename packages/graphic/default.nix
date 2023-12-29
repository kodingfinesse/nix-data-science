{pkgs, ...}: {
  environment = {
    systemPackages = with pkgs; [
      blender
      inkscape
      krita
      scribus
      synfigstudio
    ];
  };
}
