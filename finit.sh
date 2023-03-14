if [ $# -ne 1 ]

then
    echo "Usage: $0 <remote-url>"
    exit 1
fi

set -eo

remote_url=$1

rm -rf .git
git init
git add .
git commit -m initial
git branch -m master main
git remote add origin $remote_url
git push -uf origin main