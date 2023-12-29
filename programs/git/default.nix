{pkgs, ...}: let
  email = "hervyqa@proton.me";
  fullname = "Hervy Qurrotul Ainur Rozi";
  # gpg --list-secret-keys --keyid-format=long
  signingkey = "C10684E03E228DC0";
in {
  programs = {
    git = {
      enable = true;
      lfs = {
        enable = true;
      };
      config = {
        commit = {
          gpgsign = "true";
        };
        core = {
          editor = "hx";
        };
        init = {
          defaultBranch = "main";
        };
        pull = {
          rebase = "true";
        };
        url = {
          "git@git.sr.ht:" = {
            insteadOf = [
              "https://git.sr.ht/"
            ];
          };
          "git@github.com:" = {
            insteadOf = [
              "https://github.com/"
            ];
          };
          "git@gitlab.com:" = {
            insteadOf = [
              "https://gitlab.com/"
            ];
          };
        };
        user = {
          email = "${email}";
          name = "${fullname}";
          signingKey = "${signingkey}";
        };
        status = {
          short = true;
        };
      };
    };
  };
}
