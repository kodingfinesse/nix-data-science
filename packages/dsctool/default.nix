{pkgs, ...}: {
  environment = {
    systemPackages = with pkgs; [
      gnuplot
      iredis
      litecli
      luigi
      mpi
      quarto
    ];
  };
}
