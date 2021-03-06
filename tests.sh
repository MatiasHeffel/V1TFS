set -ex

. ./build.properties

function copyTestingResources() {
	echo 'Copying testing resources...'
  	mkdir -p ./Resources;
  	cp ./VersionOneTFSServer.Tests/Resources/* ./Resources
}  	

copyTestingResources

# ---- Execute NSpec Tests -------------------------------------------
./packages/nspec.0.9.67/tools/NSpecRunner.exe Integration.Core.Tests/bin/$Configuration/Integration.Core.Tests.dll
#./packages/nspec.0.9.67/tools/NSpecRunner.exe VersionOneTFSServer.Tests/bin/$Configuration/VersionOneTFSServer.Tests.dll
./packages/nspec.0.9.67/tools/NSpecRunner.exe VersionOne.TFS2010.DataLayer.Tests/bin/$Configuration/VersionOne.TFS2010.DataLayer.Tests.dll
./packages/nspec.0.9.67/tools/NSpecRunner.exe VersionOneTFSServerConfig.Tests/bin/$Configuration/VersionOneTFSServerConfig.Tests.dll
