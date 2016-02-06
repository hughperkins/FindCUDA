# FindCUDA
FindCUDA module for cmake

This is under MIT license

## How this source-code was obtained?

- downloaded https://cmake.org/files/v3.5/cmake-3.5.0-rc1.tar.gz
- extracted
- copied Modules/FindCUDA.cmake and Modules/FindCUDA/ folders
- applied a custom fix to allow incremental builds on cutorch, and cunn (might not generalize for other
software)

## Why not just use the Ubuntu standard FindCUDA?

- doesnt contain the fix for incremental builds on cutorch

## Why not just download the gz directly?

- doesnt contain the fix for incremental builds on cutorch

## Why not push the fix upstream into cmake?

working on it :-)  This repo might evolve appropriately as a function of this, or disappear eventually, as
and when upstream is fixed, and a new version of cmake is available

## Where can I find out more about FindCUDA?

The documentation for FindCUDA is at https://cmake.org/cmake/help/v3.0/module/FindCUDA.html  The author
of the uncustomized FindCUDA module is James Bigler.

