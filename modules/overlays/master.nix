{inputs, ...}: {
  perSystem = {system, ...}: {
    overlayAttrs = {
      master-branch = import inputs.nixpkgs-master {
        config.allowUnfree = true;
        inherit system;
      };
    };
  };
}
