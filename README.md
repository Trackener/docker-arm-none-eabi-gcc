# docker-arm-none-eabi-gcc
Docker container with ARM Embedded Compiler

Version 7-2018-q4-major
Released: December 20, 2018

# Features:
Features:

All GCC 8 features, plus latest mainline features

Known Changes and Issues:

Thumb1 code size regression due to new register allocation: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=59535
Multilib is now enabled with --with-multilib-list=rmprofile when building the toolchain from source

## Windows installer now accepts the following options when running in silent mode:

Windows installer now accepts the following options when running in silent mode:
/P Adds the installation bin directory to the system PATH
/R Adds an InstallFolder registry entry for the install.
