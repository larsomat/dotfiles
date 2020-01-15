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
brew install php
brew install gmp
# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2
# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz
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

# my personal stuff
brew install adns
brew install aom
brew install ascii
brew install autoconf
brew install autojump
brew install automake
brew install awscli
brew install bash-completion@2
brew install boost
brew install bower
brew install cairo
brew install cask
brew install ceres-solver
brew install cloog
brew install cmake
brew install cppunit
brew install curl
brew install dark-mode
brew install docker
brew install dos2unix
brew install dosbox
brew install eigen
brew install emacs
brew install ffmpeg
brew install flac
brew install fontconfig
brew install freetype
brew install frei0r
brew install fribidi
brew install gcc
brew install gcc@4.9
brew install gdbm
brew install gdk-pixbuf
brew install gettext
brew install gflags
brew install giflib
brew install git-flow
brew install glew
brew install glib
brew install glm
brew install glog
brew install gmp@4
brew install gnu-sed
brew install gnutls
brew install go
brew install gobject-introspection
brew install gource
brew install gpg-agent
brew install graphite2
brew install haproxy
brew install harfbuzz
brew install helm
brew install icu4c
brew install ilmbase
brew install imagemagick
brew install isl
brew install isl@0.12
brew install jenv
brew install jhipster
brew install jpeg
brew install kubectx
brew install kubernetes-cli
brew install lame
brew install leptonica
brew install libass
brew install libassuan
brew install libbluray
brew install libcroco
brew install libde265
brew install libevent
brew install libffi
brew install libgcrypt
brew install libgpg-error
brew install libheif
brew install libidn2
brew install libksba
brew install libmpc
brew install libmpc@0.8
brew install libogg
brew install libomp
brew install libopusenc
brew install libpng
brew install librsvg
brew install libsamplerate
brew install libsndfile
brew install libsoxr
brew install libtasn1
brew install libtensorflow
brew install libtiff
brew install libtool
brew install libunistring
brew install libusb
brew install libvidstab
brew install libvo-aacenc
brew install libvorbis
brew install libvpx
brew install libyaml
brew install little-cms2
brew install lzo
brew install mailhog
brew install make
brew install makedepend
brew install maven
brew install metis
brew install mpfr
brew install mpfr@2
brew install mtr
brew install mysql
brew install nasm
brew install ncftp
brew install ncurses
brew install nettle
brew install node
brew install npth
brew install numpy
brew install nvm
brew install openblas
brew install opencore-amr
brew install opencv
brew install openexr
brew install openjpeg
brew install openssl
brew install openssl@1.1
brew install opus
brew install opus-tools
brew install opusfile
brew install p11-kit
brew install pango
brew install pcre
brew install pcre2
brew install perl
brew install pinentry
brew install pixman
brew install pkg-config
brew install postgresql
brew install protobuf
brew install protobuf@3.7
brew install pth
brew install pyqt
brew install python
brew install python@2
brew install python@3.8
brew install qt
brew install readline
brew install rhino
brew install rtmpdump
brew install rubberband
brew install ruby
brew install sbt
brew install scala
brew install scons
brew install sdl
brew install sdl2
brew install sdl2_image
brew install sdl_net
brew install sdl_sound
brew install selenium-server-standalone
brew install shared-mime-info
brew install sip
brew install snappy
brew install speedtest-cli
brew install speedtest_cli
brew install speex
brew install sphinx-doc
brew install sqlite
brew install suite-sparse
brew install tbb
brew install tesseract
brew install testssl
brew install texi2html
brew install tfswitch
brew install the_silver_searcher
brew install theora
brew install tomcat
brew install tomcat@7
brew install tomcat@8
brew install transmission
brew install transmission-cli
brew install unbound
brew install unrar
brew install vim
brew install webkit2png
brew install webp
brew install wget
brew install x264
brew install x265
brew install xmlrpc-c
brew install xvid
brew install yarn
brew install yasm
brew install youtube-dl
brew install zlib
brew install zsh

# Remove outdated versions from the cellar.
brew cleanup