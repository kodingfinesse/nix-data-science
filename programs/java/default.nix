{pkgs, ...}: {
  programs = {
    java = {
      enable = true;
      binfmt = true;
    };
  };
}
