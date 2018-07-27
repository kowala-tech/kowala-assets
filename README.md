# Unified styles for Kowala assets to be served over a CDN

### Development
`drone exec --local --commit.branch develop`

### Staging CDN

[cdn.staging.kowala.io]()

### Production CDN

[cdn.kowala.tech]()

### Add to an existing project

#### Step 1: Add as a remote to existing project
`git remote add kowala-assets git@github.com:kowala-tech/kowala-assets.git`

#### Step 2: Create a subtree
`git subtree add --prefix=themes/kowala/styles/kowala-assets/ kowala-assets master`

#### Install dependencies
`cd themes/kowala/styles/kowala-assets/ && npm i`

#### Stay up-to-date
`git subtree pull --prefix=themes/kowala/styles/kowala-assets/ --squash kowala-assets master`
