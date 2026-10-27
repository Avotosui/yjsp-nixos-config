{
  perSystem = {pkgs, ...}: {
    devShells.default = pkgs.mkShell {
      strictDeps = true;

      nativeBuildInputs = with pkgs; [
        alejandra
        nil

        bash-language-server

        lua-language-server

        taplo

        vscode-json-languageserver

        yaml-language-server
      ];
    };
  };
}
