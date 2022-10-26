{pkgs}: let
in
  pkgs.mkShell {
    buildInputs = with pkgs; [
      elmPackages.elm
      elmPackages.elm-format
      elmPackages.elm-language-server
      nodePackages.vscode-css-languageserver-bin
    ];
    shellHook = ''
    '';
  }
