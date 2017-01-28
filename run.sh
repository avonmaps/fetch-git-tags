if [ ! -d ".git" ]; then
    fail "no git repository found"
fi

# Configure git
git config --global user.email pleasemailus@wercker.com
git config --global user.name "wercker"
info 'configured git'

# Get tags.
git fetch --tags $GIT_REMOTE
info 'fetched git tags'

