

{
  description = "flake support my_personnal_script nixos module";

  
  inputs.nixpkgs.url = github:NixOS/nixpkgs/nixos-unstable;

  
  outputs = { self, nixpkgs }: {

    packages.x86_64-linux.default =
      # Notice the reference to nixpkgs here.
      with import nixpkgs { system = "x86_64-linux"; };
      stdenv.mkDerivation {
        name = "my_personnal_script";
        src = self;

        packages = with pkgs; [ 
          rofi # menu
          python3 # python
          i3 # window manager
          i3lock  # lock screen
          kitty # terminal
          feh # wallpaper
        ];

        buildPhase = ''
          mkdir -p $out/bin;
        '';
        installPhase = ''
          cp -r ./src/* $out/bin;
          chmod +x $out/bin/my_script.sh;
        '';
      };

  };
}