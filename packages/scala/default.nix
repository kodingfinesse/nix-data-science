{pkgs, ...}: {
  environment = {
    systemPackages = with pkgs; [
      ammonite
      metals
      sbt
      scala
      scala-cli
      scalafmt
    ];
  };
}
