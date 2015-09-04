# Tonic widgets
cd tonic-widgets
echo $PWD
git fetch origin
npm update
cd ..

# Tonic apps
cd tonic-apps
cd arctic-viewer
echo $PWD
git fetch origin
npm update
cd ..

cd arctic-viewer-ios
echo $PWD
git fetch origin
cd ../..

# Tonic handlers
cd tonic-handlers/tonic-mouse-handler
echo $PWD
git fetch origin
npm update
cd ../..

# Tonic utils
cd tonic-utils/tonic-data-manager
echo $PWD
git fetch origin
npm update
cd ..

cd tonic-data-converter
echo $PWD
git fetch origin
cd ..

cd tonic-data-generator
echo $PWD
git fetch origin
npm update
cd ..

cd tonic-image-builder
echo $PWD
git fetch origin
npm update
cd ..

cd tonic-query-data-model
echo $PWD
git fetch origin
npm update
cd ..

cd tonic-site-generator
echo $PWD
git fetch origin
npm update
cd ..
