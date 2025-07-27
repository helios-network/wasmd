VERSION=${VERSION:-"v0.50.10-helios-8"}

echo "Deploy wasmd"
git add .
git commit -m "Publish $VERSION"
git push
git tag $VERSION
git push origin $VERSION
sleep 5
GOPROXY=proxy.golang.org go list -m github.com/Helios-Chain-Labs/wasmd@$VERSION

echo "Publish done"