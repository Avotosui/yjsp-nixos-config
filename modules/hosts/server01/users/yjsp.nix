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
      shell = pkgs.zsh;
    };
  };

  flake.modules.homeManager.hosts-server01-users-yjsp = {
    imports = with self.modules.homeManager; [
      programs-browsers-firefox

      programs-compression-p7zip
      programs-compression-xz
      programs-compression-zip

      programs-customization-catppuccin
      programs-customization-starship

      programs-development-direnv

      programs-editors-neovim # for me in case i need to debug

      programs-fhscompat-nixalien

      programs-organization-bat
      programs-organization-eza
      programs-organization-fd
      programs-organization-file
      programs-organization-ripgrep
      programs-organization-trash
      programs-organization-tree
      programs-organization-yazi
      programs-organization-zoxide

      programs-security-age
      programs-security-ssh
      programs-security-sshagent

      programs-shells-bash
      programs-shells-zsh

      programs-utilities-atuin
      programs-utilities-fzf
      programs-utilities-payrespects
      programs-utilities-tldr

      programs-versioncontrol-git

      system-fonts-jetbrainsmono
      system-hardware-network
      system-users-groups
    ];

    home.stateVersion = "26.05";
  };
}
