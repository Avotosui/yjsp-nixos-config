{self, ...}: {
  flake.modules.nixos.hosts-server01-users-yjsp = {
    config,
    pkgs,
    ...
  }: {
    home-manager.users.yjsp = self.modules.homeManager.hosts-server01-users-yjsp;

    users.users."yjsp" = {
      isNormalUser = true;
      description = "yjsp";
      extraGroups = ["wheel"];
    };
  };

  flake.modules.homeManager.hosts-server01-users-yjsp = {
    imports = with self.modules.homeManager; [
      programs-browsers-firefox

      programs-editors-neovim # for me in case i need to debug

      programs-security-age
      programs-security-ssh
      programs-security-sshagent

      programs-fhscompat-nixalien

      programs-utilities-atuin
      programs-utilities-fzf
      programs-utilities-payrespects
      programs-utilities-tldr

      system-fonts-jetbrainsmono
      system-hardware-network
      system-users-groups
    ];

    home.stateVersion = "26.05";
  };
}
