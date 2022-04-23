run: nextjs/out/index.html
	go run . -p :8000

distclean:
	rm -rf nextjs/out

nextjs/out/index.html:
	cd nextjs; yarn && yarn build && yarn next export

.PHONY: nextjs nuxtjs vite-react vite-vue
nextjs: nextjs/out/index.html
	(cd nextjs/out/ && python3 -m http.server 8000)

