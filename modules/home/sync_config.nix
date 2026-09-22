{ config, lib, ... }:

let
  mkSymlinks =
    repoDirString: localEvalPath:
    let
      inherit (config.lib.file) mkOutOfStoreSymlink;

      mkSymlink = relPath: {
        name = relPath;
        value.source = mkOutOfStoreSymlink "${repoDirString}/${relPath}";
      };

      readDirRecursive =
        currentRelPath: currentNixPath:
        builtins.concatLists (
          map (
            name:
            let
              entryType = (builtins.readDir currentNixPath).${name};
              nextRelPath = if currentRelPath == "" then name else "${currentRelPath}/${name}";
              nextNixPath = "${currentNixPath}/${name}";
            in
            if entryType == "directory" then 
              readDirRecursive nextRelPath nextNixPath 
            else 
              [ nextRelPath ]
          ) (builtins.attrNames (builtins.readDir currentNixPath))
        );
        
    in builtins.listToAttrs (map mkSymlink (readDirRecursive "" localEvalPath));

in {
  # Argument 1: The absolute string path to where the folder lives on your actual machine.
  # Argument 2: The relative Nix path to read the files during evaluation (up 2 levels, then into config).
  xdg.configFile = mkSymlinks "${config.home.homeDirectory}/.nixfiles/config" ../../config;
}
