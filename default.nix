{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/2e193264db568a42b342e4b914dc314383a6194c.tar.gz") {}}:
pkgs.mkShell {
  buildInputs = [
    pkgs.which
    pkgs.htop
    # pkgs.zlib
  ];
  shellHook = ''
    echo hello
  '';
  MY_ENVIRONMENT_VARIABLE = "world";
}