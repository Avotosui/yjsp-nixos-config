{inputs, ...}: {
  perSystem = {system, ...}: {
    overlayAttrs = {
      stable = import inputs.nixpkgs-stable {
        config.allowUnfree = true;
        inherit system;
      };
    };
  };
}
