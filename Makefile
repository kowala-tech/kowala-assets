SASS_STYLE     ?= compressed
SASS_PATHS     ?= styles:theme/styles

build: clean build-font-icons build-css

build-font-icons:
	@fontcustom compile fonts/vectors -c fonts/fontcustom.yml

build-css:
	@sass --style $(SASS_STYLE) --update $(SASS_PATHS) -E "UTF-8"

clean:
	@rm -rf theme/
