rm -rf ../zola-hepcosmo-demo/*
rm -rf public/
sh archive.sh
zola build
cp -r public/* ../zola-hepcosmo-demo
