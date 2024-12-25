{ config, pkgs, ... }:

{
  home.username = "taemin";
  home.homeDirectory = "/home/taemin";

  home.packages = with pkgs; [
    neofetch
    zip
    xz
    unzip

    jq
    fzf

    dnsutils
    file
    which
    tree
    gnused
    gnutar
    gawk

    nix-output-monitor

    strace
    ltrace
    lsof

    lm_sensors # sensors
    pciutils # lspci
    usbutils # lsusb
  ];

  programs.git = {
    enable = true;
    userName = "HubCodes";
    userEmail = "krlrhkstk12@gmail.com";
  };

  programs.bash = {
    enable = true;
    enableCompletion = true;
    bashrcExtra = ''
    '';

    shellAliases = {
      g = "git";
    };
  };

  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      vscodevim.vim
      bbenoist.nix
    ];
  };

  home.stateVersion = "24.11";
  programs.home-manager.enable = true;
}
