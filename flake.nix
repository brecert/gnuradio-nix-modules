{
  outputs = { self, nixpkgs }:
    let
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
      inherit (pkgs) gnuradio3_9Packages;
      inherit (gnuradio3_9Packages) callPackage;
    in
    {
      packages.x86_64-linux = {
        gr-sdrplay = callPackage ./packages/gr-sdrplay { };
      };

      formatter.x86_64-linux = pkgs.nixpkgs-fmt;
    };
}
