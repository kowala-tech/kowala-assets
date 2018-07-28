# Unified styles for Kowala assets to be served over a CDN

Builds on push to develop and master using Drone CI.

Staging CDN: [https://cdn.staging.kowala.io]() \
Production CDN: [https://cdn.kowala.tech]()

### Development

Run Drone locally:

`drone exec --local --commit.branch develop`

### Add to an existing git repo

#### Step 1: Add as a remote to existing project
`git remote add kowala-assets git@github.com:kowala-tech/kowala-assets.git`

#### Step 2: Create a subtree
`git subtree add --prefix=themes/kowala/styles/kowala-assets/ kowala-assets master`

#### Install dependencies
`cd themes/kowala/styles/kowala-assets/ && npm i`

#### Stay up-to-date
`git subtree pull --prefix=themes/kowala/styles/kowala-assets/ --squash kowala-assets master`


#### Important Assets:

##### Most Recent White Paper
https://cdn.kowala.tech/pdfs/kowala-protocol-white-paper.pdf

##### Kowala (blue text)
[SVG] https://cdn.kowala.tech/images/kowala/kowala-blue.svg \
[PNG] https://cdn.kowala.tech/images/kowala/kowala-blue.png

##### Kowala (white text)
[SVG] https://cdn.kowala.tech/images/kowala/kowala-white.svg \
[PNG] https://cdn.kowala.tech/images/kowala/kowala-white.png

##### Kowala (white text on blue square)
[SVG] https://cdn.kowala.tech/images/kowala/kowala-white-on-blue.svg \
[PNG] https://cdn.kowala.tech/images/kowala/kowala-white-on-blue.png

##### kUSD Logo
[SVG] https://cdn.kowala.tech/images/kusd/kusd.svg \
[PNG] https://cdn.kowala.tech/images/kusd/kusd.png

##### mUSD Logo
[SVG] https://cdn.kowala.tech/images/musd/musd.svg \
[PNG] https://cdn.kowala.tech/images/musd/musd.png
