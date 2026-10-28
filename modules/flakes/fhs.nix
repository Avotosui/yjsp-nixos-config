# command: bash ./SecureW2_join.run

{ pkgs ? import <nixpkgs> {} }:
(pkgs.buildFHSEnv {
  name = "eduroam-fhs";
  targetPkgs = p: [
    (p.python3.withPackages (ps: [ ps.dbus-python ps.pygobject3 ]))
    p.wpa_supplicant
    p.networkmanager
    p.coreutils
    p.openssl
    p.xdg-utils
    p.firefox
  ];
  runScript = "bash";
}).env
