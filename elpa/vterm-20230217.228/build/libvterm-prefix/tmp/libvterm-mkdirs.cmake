# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/hajime-f/.emacs.d/elpa/vterm-20230217.228/build/libvterm-prefix/src/libvterm"
  "/Users/hajime-f/.emacs.d/elpa/vterm-20230217.228/build/libvterm-prefix/src/libvterm-build"
  "/Users/hajime-f/.emacs.d/elpa/vterm-20230217.228/build/libvterm-prefix"
  "/Users/hajime-f/.emacs.d/elpa/vterm-20230217.228/build/libvterm-prefix/tmp"
  "/Users/hajime-f/.emacs.d/elpa/vterm-20230217.228/build/libvterm-prefix/src/libvterm-stamp"
  "/Users/hajime-f/.emacs.d/elpa/vterm-20230217.228/build/libvterm-prefix/src"
  "/Users/hajime-f/.emacs.d/elpa/vterm-20230217.228/build/libvterm-prefix/src/libvterm-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/hajime-f/.emacs.d/elpa/vterm-20230217.228/build/libvterm-prefix/src/libvterm-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/hajime-f/.emacs.d/elpa/vterm-20230217.228/build/libvterm-prefix/src/libvterm-stamp${cfgdir}") # cfgdir has leading slash
endif()
