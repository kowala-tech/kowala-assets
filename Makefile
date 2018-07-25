SASS_STYLE     ?= compressed
SASS_PATHS     ?= sass:assets/styles

build: clean build-font-icons copy-fonts build-css copy-images copy-pdfs

watch: build watch-css

serve:
	@npm run serve

build-font-icons:
	@fontcustom compile fonts/fontcustom/vectors -c fonts/fontcustom/fontcustom.yml

build-css:
	@sass --style $(SASS_STYLE) --update $(SASS_PATHS) -E "UTF-8"

watch-css:
	@sass --style $(SASS_STYLE) --watch $(SASS_PATHS) -E "UTF-8"

copy-fonts:
	@cp -r fonts/Poppins/ assets/fonts/

copy-images:
	@cp -r images/ assets/

copy-pdfs:
	@cp -r pdfs/ assets/

clean:
	@rm -rf assets/
