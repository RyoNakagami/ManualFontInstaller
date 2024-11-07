# Manual Font Installer

This repository provides a simple script to manually install custom fonts on your local Ubuntu system.

## Prerequisites

- Ubuntu operating system
- Terminal access
- `fc-cache` command

If you use MacOS, `brew install ricty` may help you use `fc-cache` command.

<strong > &#9654;&nbsp; Warning</strong>

Please make sure you haven't installed the font yet to avoid conflicts or duplicates.

## Installation

The installation script will place the fonts in the `.local/share/fonts` directory of your home folder, making them available for your user account.

<strong > &#9654;&nbsp; Steps</strong>

1. Clone the repository:
    ```sh
    git clone https://github.com/yourusername/ManualFontInstaller.git
    cd ManualFontInstaller
    ```

2. Run the installation script:
    ```sh
    ./install_fonts.sh
    ```

## Usage

1. Place your custom font files (e.g., `.ttf`, `.otf`) in the `fonts` directory.
2. Run the installation script again to install the new fonts:
    ```sh
    ./install_fonts.sh
    ```

## Uninstallation

To remove the installed fonts, run the uninstallation script:

```sh
rm -rf ~/.local/share/fonts/<font-you-want-to-remove>
fc-cache -fv
```

## Fonts List

The file extension `*.ttf` is OpenType, `*.ttc` is a TrueType collection, and `*.fon` is raster (bitmap).

|Fonts|File|Explanation|
|---|---|--|
|Meiryo|`meiryo.ttc`|Meiryo UI Regular, Meiryo UI Italic, Meiryo Regular, Meiryo Italic|
||`meiryob.ttc`|Meiryo UI Bold, Meiryo UI Bold Italic, Meiryo Bold, Meiryo Bold Italic|


## Contributing

Contributions are welcome! Please fork the repository and submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.