{
  flake.modules.homeManager.programs-networking-tshark = {pkgs, ...}: {
    home.packages = with pkgs; [tshark];
  };
}
