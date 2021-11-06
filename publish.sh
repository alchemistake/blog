rm -rf _site
bundle exec jekyll build
git --work-tree=_site add --all
git --work-tree=_site commit -m $1
git --work-tree=_site push