
#
mkdir tonic-apps
mkdir tonic-handlers
mkdir tonic-utils

# Tonic widgets
git clone https://github.com/Kitware/tonic-widgets.git
cd tonic-widgets
git submodule update --init
npm install
cd docs/www
git checkout gh-pages
cd ../..

# Tonic apps
cd ../tonic-apps
git clone https://github.com/Kitware/arctic-viewer.git
cd arctic-viewer
git submodule update --init
npm install
npm link
cd docs/www
git checkout gh-pages
cd ../../..

git clone https://github.com/Kitware/arctic-viewer-ios.git
cd arctic-viewer-ios
git submodule update --init
cd docs/www
git checkout gh-pages
cd ../../../..

# Tonic handlers
cd tonic-handlers
git clone https://github.com/Kitware/tonic-mouse-handler.git
cd tonic-mouse-handler
git submodule update --init
npm install
cd docs/www
git checkout gh-pages
cd ../../../..

# Tonic utils
cd tonic-utils

git clone https://github.com/Kitware/tonic-data-manager.git
cd tonic-data-manager
git submodule update --init
npm install
cd docs/www
git checkout gh-pages
cd ../../..

git clone https://github.com/Kitware/tonic-image-builder.git
cd tonic-image-builder
git submodule update --init
npm install
cd docs/www
git checkout gh-pages
cd ../../..

git clone https://github.com/Kitware/tonic-query-data-model.git
cd tonic-query-data-model
git submodule update --init
npm install
cd docs/www
git checkout gh-pages
cd ../../..

git clone https://github.com/Kitware/tonic-site-generator.git
cd tonic-site-generator
git submodule update --init
npm install
cd docs/www
git checkout gh-pages
cd ../../..

git clone https://github.com/Kitware/tonic-data-converter.git
cd tonic-data-converter
npm install
cd ..

git clone https://github.com/Kitware/tonic-data-generator.git
cd tonic-data-generator
npm install
npm link
cd ..

git clone https://github.com/Kitware/tonic-vtk.git
cd tonic-vtk
npm install
cd ..
