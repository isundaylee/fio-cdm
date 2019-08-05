version="0.1.0"

if [ ! -z "$(git status --porcelain)" ]; then 
    echo "Working directory not clean. Refusing to proceed."
    exit 1
fi

if ! git tag v$version; then
    echo "Failed to tag version $version. Did you forget to bump the version number?"
    exit 1
fi

git push origin v$version

echo "Tagged and pushed version $version"