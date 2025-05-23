maintainer=("NixxO <nixxoq@outlook.com>")
pkgname="elyprismlauncher"
pkgver="9.4"
pkgrel="1"
pkgdesc="Minecraft launcher with ability to manage multiple instances and log in with Ely.by"
url='https://elyprismlauncher.github.io'
arch=('amd64') # Assuming x86_64 maps to amd64 for Ubuntu-based systems
source=(
  "https://github.com/ElyPrismLauncher/ElyPrismLauncher/releases/download/${pkgver}/ElyPrismLauncher-ArchLinux-x86_64-${pkgver}.pkg.tar"
)

sha256sums=()

depends=('libc6' 'libgcc-s1' 'libstdc++6' 'openjdk-21-jre' 'libgl1' 'libqt6core6' 'libqt6core5compat6' 'libqt6svg6' 'qt6-image-formats-plugins' 'libqt6networkauth6' 'libquazip1-qt6-1' 'zlib1g' 'hicolor-icon-theme' 'libtomlplusplus3' 'cmark')
optdepends=('glfw: to use system GLFW libraries'
            'openal: to use system OpenAL libraries'
            'visualvm: Profiling support'
            'xorg-xrandr: for older minecraft versions'
            'orca: minecraft screen reader'
            'flite: minecraft voice narration')
makedepends=('cmake' 'extra-cmake-modules' 'git' 'openjdk-21-jdk' 'scdoc' 'gamemode')
license=('GPL-3.0-only' 'LGPL-3.0-or-later' 'LGPL-2.0-or-later' 'Apache-2.0' 'MIT')

package() {
    tar -xf "ElyPrismLauncher-ArchLinux-x86_64-${pkgver}.pkg.tar" -C "${pkgdir}"
}