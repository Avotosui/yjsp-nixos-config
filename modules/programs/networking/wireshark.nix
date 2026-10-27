{
  flake.modules.homeManager.programs-networking-wireshark = {pkgs, ...}: {
    home.packages = with pkgs; [wireshark-qt wireshark-cli];
  };
}
