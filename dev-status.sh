# Tonic widgets
cd tonic-widgets
echo "-------------------------------------------------------------------------"
echo "#" $PWD
echo
git fetch origin
git status | grep -vi master | grep -vi git | grep -vi clean
echo "-------------------------------------------------------------------------"
cd ..

# Tonic apps
cd tonic-apps
cd arctic-viewer
echo "#" $PWD
echo
git fetch origin
git status | grep -vi master | grep -vi git | grep -vi clean
echo "-------------------------------------------------------------------------"
cd ..

cd arctic-viewer-ios
echo "#" $PWD
echo
git fetch origin
git status | grep -vi master | grep -vi git | grep -vi clean
echo "-------------------------------------------------------------------------"
cd ../..

# Tonic handlers
cd tonic-handlers/tonic-mouse-handler
echo "#" $PWD
echo
git fetch origin
git status | grep -vi master | grep -vi git | grep -vi clean
echo "-------------------------------------------------------------------------"
cd ../..

# Tonic utils
cd tonic-utils/tonic-data-manager
echo "#" $PWD
echo
git fetch origin
git status | grep -vi master | grep -vi git | grep -vi clean
echo "-------------------------------------------------------------------------"
cd ..

cd tonic-data-converter
echo "#" $PWD
echo
git fetch origin
git status | grep -vi master | grep -vi git | grep -vi clean
echo "-------------------------------------------------------------------------"
cd ..

cd tonic-data-generator
echo "#" $PWD
echo
git fetch origin
git status | grep -vi master | grep -vi git | grep -vi clean
echo "-------------------------------------------------------------------------"
cd ..

cd tonic-image-builder
echo "#" $PWD
echo
git fetch origin
git status | grep -vi master | grep -vi git | grep -vi clean
echo "-------------------------------------------------------------------------"
cd ..

cd tonic-query-data-model
echo "#" $PWD
echo
git fetch origin
git status | grep -vi master | grep -vi git | grep -vi clean
echo "-------------------------------------------------------------------------"
cd ..

cd tonic-site-generator
echo "#" $PWD
echo
git fetch origin
git status | grep -vi master | grep -vi git | grep -vi clean
echo "-------------------------------------------------------------------------"
cd ..

cd tonic-vtk
echo "#" $PWD
echo
git fetch origin
git status | grep -vi master | grep -vi git | grep -vi clean
echo "-------------------------------------------------------------------------"
cd ..
