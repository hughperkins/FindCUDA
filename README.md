# FindCUDA

Purpose of installing this package (or Lua rock) is to work around a dependency bug in CMake that forces all .cu files be
unconditionally recompiled.
Installing this package in a directory coming in Cmake module path before the system cmake, will fix the issue.

Cmake versions: the bug is there as of Cmake 2.8/3.5. Expecting official fix in 3.51 - not sure about 2.8 backport.

## How to use?

If you are using it for Torch, then do simply:
```
luarocks install findcuda
```
That's it!  cutorch and cunn builds will now be incremental :-)  It's a bit draft, so worst case if something
is not building fully, just:
- (ideally) zip your cutorch directory, and send it to me somehow, so I can take a look
- `rm -Rf build`

If you are using it for other projects, just use regilar Cmake build:
(cmake -E make_directory build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX="$(YOUR_PROJECT_INSTALL_ROOT)" && $(MAKE) install)

## How this source-code was obtained?

- downloaded https://cmake.org/files/v3.5/cmake-3.5.0-rc1.tar.gz
- extracted
- copied Modules/FindCUDA.cmake and Modules/FindCUDA/ folders
- applied a custom fix to allow incremental builds on cutorch, and cunn (might not generalize for other
software)
- added appropriate rocks file and CMakeLists.txt so installable as luarocks module

## FAQ

### Why not just use the Ubuntu standard FindCUDA?

- Ubintu comes with CMake 2.8 which has the dependency issue with CUDA .cu files.

### Why not push the fix upstream into cmake?

We did :-)
Expecting official fix to come out with CMake 3.51 - not sure about 2.8 backport.
This repo might evolve appropriately as a function of this, or disappear eventually, as
and when upstream is fixed, and a new version of cmake is available

## License

MIT

## Where can I find out general informtion about FindCUDA module of CMake?

The documentation for FindCUDA is at https://cmake.org/cmake/help/v3.5/module/FindCUDA.html  The author
of the original FindCUDA module is James Bigler.
