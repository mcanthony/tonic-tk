# Tonic widgets
cd tonic-widgets
echo $PWD
git pull
cd ..

# Tonic apps
cd tonic-apps
cd arctic-viewer
echo $PWD
git pull
cd ..

cd arctic-viewer-ios
echo $PWD
git pull
cd ../..

# Tonic handlers
cd tonic-handlers/tonic-mouse-handler
echo $PWD
git pull
cd ../..

# Tonic utils
cd tonic-utils/tonic-data-manager
echo $PWD
git pull
cd ..

cd tonic-data-converter
echo $PWD
git pull
cd ..

cd tonic-data-generator
echo $PWD
git pull
cd ..

cd tonic-image-builder
echo $PWD
git pull
cd ..

cd tonic-query-data-model
echo $PWD
git pull
cd ..

cd tonic-site-generator
echo $PWD
git pull
cd ..
