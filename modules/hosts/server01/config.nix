{
  self,
  inputs,
  ...
}: {
  flake.modules.nixos.hosts-server01 = {pkgs, ...}: {
    imports = with self.modules.nixos; [
      hosts-server01-users-yjsp

      programs-desktops-gnome
      programs-fhscompat-nixld
      programs-networking-openssh
      programs-packagemanagers-nix

      system-boot-systemdboot
      system-hardware-audio
      system-hardware-graphics
      system-hardware-network
      system-locale
      system-users-groups
      system-users-homemanager
      system-peripherals-bluetooth
      system-peripherals-printing
    ];

    boot.kernelPackages = pkgs.linuxPackages_latest;

    networking.hostName = "server01";

    services.xserver.xkb = {
      layout = "us";
      variant = "";
    };

    flake.nixosConfigurations.server01 = inputs.nixpkgs.lib.nixosSystems {
      modules = [self.modules.hosts-server01];
    };
  };
}
