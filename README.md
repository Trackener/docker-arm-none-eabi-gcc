# docker-arm-none-eabi-gcc
Docker container with ARM Embedded Compiler

Version 7-2018-q2-update

Released: June 27, 2018

# Features:

Fixed powf/expf/exp2f/logf/log2f performance regression
  https://answers.launchpad.net/gcc-arm-embedded/+question/662462
  
Added support for Arm Cortex-M33 without DSP via -mcpu=cortex-m33+nodsp

Added Armv8-R multilib mappings

Fix build requirements for GDB tui support

Enabled C99 IO format specifier in newlib

Fixed cmse_nonsecure_caller Armv8-M Security Extension intrinsic
  https://gcc.gnu.org/bugzilla/show_bug.cgi?id=85203
  
Fix crash in __builtin_arm_set_fpscr GCC builtin
  https://gcc.gnu.org/bugzilla/show_bug.cgi?id=85261
  
[LTO bug](https://bugs.launchpad.net/gcc-arm-embedded/+bug/1747966)
  was fixed in previous release. Release note updated to reflect the change.
  
Fixed issue with building libgcc's cmse.c without headers
  https://bugs.launchpad.net/gcc-arm-embedded/+bug/1717502
  
Fixed issue with arm_cmse.h C99 compatibility
  https://bugs.launchpad.net/gcc-arm-embedded/+bug/1773934
  
# Known Changes and Issues:

Thumb1 code size regression due to new register allocation: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=59535

Multilib is now enabled with --with-multilib-list=rmprofile when building the toolchain from source

## Windows installer now accepts the following options when running in silent mode:

/P Adds the installation bin directory to the system PATH

/R Adds an InstallFolder registry entry for the install.

