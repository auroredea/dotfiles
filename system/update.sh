echo "Updating repos"

for repo in ~/.vim/bundle/*; do
  echo "Updating $repo"
  cd "$repo" && git pull
done
