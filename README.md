# Unified styles for Kowala assets to be served over a CDN

### Development
`drone exec --local --commit-branch develop`

### Staging CDN

[cdn.staging.kowala.io]()

### Production CDN

[cdn.kowala.tech]()

### Add SASS to an existing project
`git clone https://github.com/kowala-tech/kowala-styles.git PATH_TO_STYLES/ --depth 0`
`cd PATH_TO_STYLES && git filter-branch --prune-empty --subdirectory-filter sass HEAD`
