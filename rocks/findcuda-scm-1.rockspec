package = "findcuda"
version = "scm-1"

source = {
   url = "git://github.com/torch/FindCUDA.git",
}

description = {
   summary = "cmake FindCUDA module",
   detailed = [[
   ]],
   homepage = "https://github.com/hughperkins/FindCUDA.git",
   license = "MIT"
}

build = {
   type = "command",
   build_command = [[
cmake -E make_directory build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX="$(SCRIPTS_DIR)/.." && $(MAKE) install
]],
   install_command = "cd build"
}
