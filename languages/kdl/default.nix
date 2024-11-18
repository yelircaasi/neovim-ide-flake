{
  pkgs,
  lib,
  g,
  neovimConfig,
  custom,
  blankSet,
  ...
}: let
  langCfg = neovimConfig.languages.kdl;
  luaName = langCfg.luaName;
in
  if !langCfg.enable
  then blankSet
  else {
    packages = with pkgs; [];

    plugins = (with pkgs.vimPlugins; []) ++ (with custom; []);

    files = {
      "./nvim/lua/languages/${luaName}.lua".text = g.utils.readAndInterpolate g ./kdl.lua;
    };

    needsPython3 = false;
    needsNodeJs = false;
    needsRuby = false;
  }
