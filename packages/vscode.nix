{ pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    package = pkgs.vscode;

    extensions = (with pkgs.vscode-extensions; [
        bbenoist.Nix ms-python.python ms-vscode.cpptools
    ]) ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [

        # Languages support
        {
        name = "nixfmt-vscode";
        publisher = "brettm12345";
        version = "0.0.1";
        sha256 = "07w35c69vk1l6vipnq3qfack36qcszqxn8j3v332bl0w6m02aa7k";
        }
        {
            name = "cmake-tools";
            publisher = "ms-vscode";
            version = "1.5.3";
            sha256 = "1y2s8rsc94ywbr23x9lhz0idp0d2lbv2vck636blvxsgxmcmmx8d";
        }
        {
            name = "rust";
            publisher = "rust-lang";
            version = "0.7.8";
            sha256 = "039ns854v1k4jb9xqknrjkj8lf62nfcpfn0716ancmjc4f0xlzb3";
        }
        # config support
        {
            name = "latex-workshop";
            publisher = "James-Yu";
            version = "8.15.0";
            sha256 = "0v4pq3l6g4dr1qvnmgsw148061lngwmk3zm12q0kggx85blki12d";
        }
        {
            name = "better-toml";
            publisher = "bungcip";
            version = "0.3.2";
            sha256 = "08lhzhrn6p0xwi0hcyp6lj9bvpfj87vr99klzsiy8ji7621dzql3";
        }
        {
            name = "docs-yaml";
            publisher = "docsmsft";
            version = "0.2.6";
            sha256 = "0fsvq77sdp7wln7xfc1yy3x30pdvk2rgy056i3vlrgvlk8gbzi2n";
        }
        {
            name = "markdown-preview-enhanced";
            publisher = "shd101wyy";
            version = "0.5.16";
            sha256 = "0w5w2np8fkxpknq76yv8id305rxd8a1p84p9k0jwwwlrsyrz31q8";
        }

        # Theme
        {
            name = "vsc-material-theme-icons";
            publisher = "Equinusocio";
            version = "1.2.2";
            sha256 = "06xfv8ggli88zg1hyrd7m494fl6bz4fspbxy626nsswq4f26msms";
        }
        {
            name = "vsc-material-theme";
            publisher = "Equinusocio";
            version = "33.1.2";
            sha256 = "14db0xmhcrk0lxafcgiqqzi1ydhiy16hs4r9g0jcdglj8bn6y624";
        }

        # Misc
        {
            name = "nix-env-selector";
            publisher = "arrterian";
            version = "0.1.2";
            sha256 = "1n5ilw1k29km9b0yzfd32m8gvwa2xhh6156d4dys6l8sbfpp2cv9";
        }
    ];

    userSettings = {
        update.mode = "none";
        terminal.integrated.shell.linux = "${pkgs.zsh}/bin/zsh";
        window.zoomLevel = 0;
        editor = {
            fontFamily = "'JetbrainsMono Nerd Font', 'monospace', monospace, 'Droid Sans Fallback'";
            fontLigatures = true;
        };

        workbench = {
            iconTheme = "eq-material-theme-icons-darker";
            colorTheme = "Material Theme Darker High Contrast";
        };
        rust-client.rustupPath = "${pkgs.rustup}/bin/rustup";
        latex-workshop.view.pdf.viewer = "tab";
        cmake.configureOnOpen = false;
        python.formatting.provider = "black";
    };
  };
}
