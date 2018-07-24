SASS_STYLE     ?= compressed
SASS_PATHS     ?= styles:theme/styles

build: build-font-icons build-css

build-css:
	@sass --style $(SASS_STYLE) --update $(SASS_PATHS) -E "UTF-8"

build-font-icons:
	@fontcustom compile fonts/vectors -c fonts/fontcustom.yml
