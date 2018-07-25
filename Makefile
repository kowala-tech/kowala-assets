SASS_STYLE     ?= compressed
SASS_PATHS     ?= sass:assets/styles

build: clean build-font-icons build-css build-images build-pdfs

watch: build watch-css

serve:
	@npm run serve

build-font-icons:
	@fontcustom compile fonts/vectors -c fonts/fontcustom.yml

build-css:
	@sass --style $(SASS_STYLE) --update $(SASS_PATHS) -E "UTF-8"

watch-css:
	@sass --style $(SASS_STYLE) --watch $(SASS_PATHS) -E "UTF-8"

build-images:
	@cp -r images/ assets/

build-pdfs:
	@cp -r pdfs/ assets/

clean:
	@rm -rf assets/
