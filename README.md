# My script

This the repository where my automation script for my linux are.

* [ ] add package dependancies
* [ ] fix xdotool to use clavier systems

# Usage

You can launch the dispatch.sh script like this :setxkb;qpsetxkb;qp

```shell
./my_script.sh [script_name] <options>
```

You can launch rofi with the same command. It will load a random configuration file.

## Nix integration usage

To [run](https://www.tweag.io/blog/2020-05-25-flakes/) a test with the nix integration :

```shell
nix shell --command hello
```

# Script description

## github_menu

### Usage

To run the script, use the following command:

```shell
./my_script.sh github_selector option
```

Replace `option` with the name of the action you want to perform on the selected folder. The available options should correspond to the scripts in the `github_menu_options` directory.

### Customization

#### Hand-Picked Folders

You can add hand-picked folders to the `hand_picked_folders` and `hand_picked_folders_in_parent_folder` arrays in the script. These folders will be included in the selection menu.

#### Parent Folder

Specify the parent folder from which you want to list subfolders in the `parent_folder` variable. Be sure to include a trailing slash in the folder path.

#### Option Scripts

You can create custom option scripts for specific actions in the `github_menu_options` directory. These scripts will be executed when you select a folder and choose a corresponding action.

### Example

Suppose you have a GitHub repository in the `~/Documents/github/` directory, and you want to list its subfolders and perform actions on them. You can use this script to easily select the desired folder and execute custom actions.

## Greenclip

This [script](https://github.com/erebe/greenclip) open a roffi menu to choose a clipboard entry. Then use xclip and [xdotool](https://github.com/jordansissel/xdotool).

> WARN : Xdotool has a [bug](https://unix.stackexchange.com/questions/139959/type-some-text-with-xdotool-independently-of-the-keyboard-layout) if the file `.xinitrc` doesn't set the keyboard layout with `setxkbmap fr` it will bug and use the us layout.
