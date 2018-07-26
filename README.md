# Unified styles for Kowala assets to be served over a CDN

### Development
`drone exec --local --commit.branch develop`

### Staging CDN

[cdn.staging.kowala.io]()

### Production CDN

[cdn.kowala.tech]()

### Add to an existing project

#### Step 1: Add as a remote in the existing project
`git remote add kowala-assets git@github.com:kowala-tech/kowala-assets.git`
`git fetch kowala-assets`
`git checkout -b kowala-assets kowala-assets/master`

#### Step 2: Pull the repo into the existing project
`git read-tree --prefix=themes/kowala/styles/kowala-assets/ -u kowala-assets`

#### Step 3: Install dependencies
`cd themes/kowala/styles/kowala-assets/ && npm i`

#### Step 4: Stay up-to-date
`git checkout kowala-assets`
`git pull`
`git checkout YOUR_BRANCH`
`git merge --squash -s subtree --no-commit kowala-assets`
