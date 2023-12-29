{
  config,
  pkgs,
  lib,
  ...
}: let
  name = "hervyqa";
in {
  services = {
    jupyter = {
      enable = true;
      command = "jupyter-lab";
      user = "${name}";
      group = "users";
      password = "'argon2:$argon2id$v=19$m=10240,t=10,p=8$ApDCy3cBQ+bMdwQUZf1j7w$ZFtkk2PIj2n/MbHRs4WgY0NoBcBqwag+7tsCUsAoMzo'";
      package = pkgs.python3.pkgs.jupyterlab;
      kernels = {
        python3 = let
          env = (pkgs.python3.withPackages (ps: with ps; [
                appdirs
                astroid
                beautifulsoup4
                bokeh
                cairosvg
                catboost
                chispa
                cycler
                cython
                dash
                dask
                fastapi
                gensim
                glueviz
                graphviz
                h5py
                hiredis
                imbalanced-learn
                ipython
                jedi
                jupyterlab
                jupyterlab-git
                jupyterlab-lsp
                jupyterlab-pygments
                jupyterlab-widgets
                kaggle
                keras
                mahotas
                matplotlib
                mido
                mutagen
                nltk
                nose
                notebook
                numpy
                opencv4
                orange3
                pandas
                pendulum
                pillow
                pip
                plotly
                pydot
                pygobject3
                pymongo
                pyspark
                pytest
                pytorch
                redis
                requests
                scikit-learn
                scikitimage
                scipy
                scrapy
                seaborn
                selenium
                simpleitk
                six
                sphinx
                spyder
                statsmodels
                sympy
                torch
                torchaudio
                torchvision
                tox
                tqdm
                transformers
                virtualenv
                wheel
                xarray
                xgboost
              ]
          ));
        in {
          displayName = "Python3";
          argv = [
            "${env.interpreter}"
            "-m"
            "ipykernel_launcher"
            "-f"
            "{connection_file}"
          ];
          language = "python";
        };
      };
    };
  };
}
