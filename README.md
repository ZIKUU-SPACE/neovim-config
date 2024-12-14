# Noevim config by ZIKUU

## Neovimのインストール


ZIKUUで使用しているNeovimの設定です。インストールするには次のコマンドを実行します。

```
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt install neovim
```

## Neovimの設定をGithubからダウンロード

```
$ git clone https://github.com/ZIKUU-SPACE/neovim-config.git $HOME/.config/nvim
```

## Packerのインストール

PackerはNeovim用のパッケージマネージャーです。

次のコマンドでPacker をインストールします。

```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

## Neovimプラグインのインストール

nvimを起動して、PackerInstallコマンドを実行します。

