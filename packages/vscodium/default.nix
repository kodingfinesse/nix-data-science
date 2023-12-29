{pkgs, ...}: {
  environment = {
    systemPackages = with pkgs; [
      (
        vscode-with-extensions.override {
          vscode = vscodium;
          vscodeExtensions = with vscode-extensions;
            [
              naumovs.color-highlight
              scala-lang.scala
              scalameta.metals
              shardulm94.trailing-spaces
              sumneko.lua
            ]
            ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
              {
                name = "language-julia";
                publisher = "julialang";
                version = "1.61.2";
                sha256 = "25d17c2668bb325616f2daff4e7f7d7340f46591f2f1ba243a8737488b76372e";
              }
            ];
        }
      )
    ];
  };
}
