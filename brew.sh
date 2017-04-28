#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install a modern version of Bash.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
#brew install php
#brew install gmp

# Install font tools.
#brew tap bramstein/webfonttools
#brew install sfnt2woff
#brew install sfnt2woff-zopfli
#brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
#brew install aircrack-ng
#brew install bfg
#brew install binutils
#brew install binwalk
#brew install cifer
#brew install dex2jar
#brew install dns2tcp
#brew install fcrackzip
#brew install foremost
#brew install hashpump
#brew install hydra
#brew install john
#brew install knock
#brew install netpbm
#brew install nmap
#brew install pngcheck
#brew install socat
#brew install sqlmap
#brew install tcpflow
#brew install tcpreplay
#brew install tcptrace
#brew install ucspi-tcp # `tcpserver` etc.
#brew install xpdf
#brew install xz

# Install other useful binaries.
brew install ack
#brew install exiv2
brew install git
brew install git-lfs
brew install gs
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install zopfli

# Remove outdated versions from the cellar.
#brew cleanup

# custom installations
#brew install ansible
#brew install ant
#brew install artifactory
brew install autoconf
brew install autojump
brew install automake
brew install bash-completion
brew install boost
#brew install cairo
brew install cask
#brew install cloog
#brew install cloog018
brew install coreutils
brew install cppunit
brew install curl
brew install dark-mode
#brew install docker-machine
#brew install dvm
#brew install faac
#brew install ffmpeg
brew install findutils
brew install fontconfig
brew install freetype
brew install gcc49
brew install gdbm
brew install gdk-pixbuf
brew install gettext
brew install git
brew install git-flow
brew install glew
brew install glib
brew install glm
brew install gmp
brew install gmp4
brew install gnu-sed
brew install gobject-introspection
#brew install gource
#brew install gradle
#brew install graphviz
#brew install haproxy
#brew install harfbuzz
brew install htop-osx
#brew install hugo
#brew install icu4c
#brew install isl
#brew install isl011
#brew install isl014
brew install jenv
brew install jpeg
#brew install lame
brew install libcroco
brew install libffi
brew install libmpc
brew install libmpc08
brew install libpng
brew install librsvg
brew install libtiff
brew install libtool
brew install libtorrent
brew install libvo-aacenc
brew install libyaml
brew install lzo
brew install make
brew install makedepend
brew install maven
#brew install mongodb
brew install moreutils
brew install mpfr
brew install mpfr2
brew install mtr
brew install mysql
brew install ncftp
brew install node
#brew install openssh
#brew install openssl
#brew install openssl@1.1
brew install p7zip
brew install pango
brew install pcre
brew install pixman
brew install pkg-config
brew install pv
brew install python
brew install qt
brew install readline
brew install rtorrent
brew install scons
brew install sdl2
brew install sdl2_image
brew install selenium-server-standalone
brew install shared-mime-info
#brew install sqlite
brew install tcpflow
brew install texi2html
brew install the_silver_searcher
brew install tomcat
brew install unrar
brew install webp
brew install wget
brew install x264
brew install xmlrpc-c
brew install xvid
brew install xz
brew install yasm
brew install youtube-dl
brew install zsh

# casks
brew cask install atom
brew cask install dash
#brew cask install dosbox
brew cask install dropbox
brew cask install filezilla
#brew cask install firefox
brew cask install flux
brew cask install google-chrome
brew cask install iterm2
brew cask install java
brew cask install keepassx
brew cask install libreoffice
brew cask install moom
brew cask install mou
#brew cask install omnidisksweeper
#brew cask install real-vnc
brew cask install robomongo
#brew cask install scummvm
brew cask install slack
brew cask install sonos
brew cask install sourcetree
brew cask install tunnelblick
brew cask install virtualbox
brew cask install visualvm
brew cask install vlc
brew cask install vnc-viewer
brew cask install yed
brew cask install spotify