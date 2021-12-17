{pkgs, fetchurl, ...}:
{
  fonts.fontconfig.enable = true;
  programs.vscode.userSettings = {
    "editor.fontFamily" = "CaskaydiaCove Nerd Font";
    "editor.fontLigatures" = true;
    "editor.fontSize" = 14;
  };

  # this is needed to allow terminess powerline
  xdg.configFile."fontconfig/conf.d/50-enable-terminess-powerline.conf".text = ''
<?xml version='1.0'?>
<!DOCTYPE fontconfig SYSTEM 'fonts.dtd'>
<fontconfig>
  <selectfont>
    <acceptfont>
      <pattern>
        <patelt name='family'><string>terminess powerline</string></patelt>
      </pattern>
    </acceptfont>
  </selectfont>
</fontconfig>
  ''; 

  home.packages = with pkgs; [
    # fonts for terminal, etc.
    terminus_font
    terminus_font_ttf
    powerline-fonts
    nerdfonts
  ];
}
