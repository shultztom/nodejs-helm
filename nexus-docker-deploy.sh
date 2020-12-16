PACKAGE_NAME=$(node -p "require('./package.json').name")
PACKAGE_VERSION=$(node -p "require('./package.json').version")
# Build tag with version
docker build -t nexus-docker-internal.shultzlab.com/shultztom/$PACKAGE_NAME:$PACKAGE_VERSION .
docker push nexus-docker-internal.shultzlab.com/shultztom/$PACKAGE_NAME:$PACKAGE_VERSION
# Tag with latest
docker tag nexus-docker-internal.shultzlab.com/shultztom/$PACKAGE_NAME:$PACKAGE_VERSION nexus-docker-internal.shultzlab.com/shultztom/$PACKAGE_NAME:latest
docker push nexus-docker-internal.shultzlab.com/shultztom/$PACKAGE_NAME:latest
echo 'Done pushing image'