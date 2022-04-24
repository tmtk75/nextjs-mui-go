run: nextjs/out/index.html \
     material-kit-react/out/index.html \
     berry-free-react-admin-template/out/index.html \
     minimal-ui-kit/out/index.html
	go run . -p :8000

distclean:
	rm -rf nextjs/out
	rm -rf material-kit-react/out
	rm -rf berry-free-react-admin-template/out

nextjs/out/index.html:
	cd nextjs; yarn && yarn build && yarn next export

# build and export
material-kit-react/out/index.html: ./material-kit-react
	cd material-kit-react; yarn && yarn build && yarn export

berry-free-react-admin-template/out/index.html: ./berry-free-react-admin-template
	cd berry-free-react-admin-template; yarn && yarn build && yarn next export

minimal-ui-kit/out/index.html: ./minimal-ui-kit
	cd minimal-ui-kit; yarn && yarn build && yarn next export

# clone
./material-kit-react:
	git clone https://github.com/devias-io/material-kit-react.git

./berry-free-react-admin-template:
	git clone https://github.com/codedthemes/berry-free-react-admin-template.git

./minimal-ui-kit:
	git clone https://github.com/devias-io/material-kit-react.git minimal-ui-kit

