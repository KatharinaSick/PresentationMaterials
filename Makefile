build:
	find . -maxdepth 2 -name "package.json" | xargs dirname | xargs -i sh -c 'npm install --prefix {} && npm run build --prefix {}'
