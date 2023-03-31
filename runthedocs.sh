rm -rf ./build
sphinx-build -b html source build
open build/index.html