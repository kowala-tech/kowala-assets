# Unified styles for Kowala assets to be served over a CDN

Builds on push to develop and master using Drone CI.

Staging CDN: [https://cdn.staging.kowala.io](https://cdn.staging.kowala.io) \
Production CDN: [https://cdn.kowala.tech](https://cdn.staging.kowala.io)

### Development

Run Drone locally:

`drone exec --local --commit.branch develop`

### Add to an existing git repo

#### Step 1: Add as a remote to existing project
`git remote add kowala-assets git@github.com:kowala-tech/kowala-assets.git`

#### Step 2: Create a subtree in kowala-assets/ (or wherever)
`git subtree add --prefix=kowala-assets/ kowala-assets develop`

#### Pulling downstream
`git subtree pull --prefix=kowala-assets/ kowala-assets develop --squash`

#### Pushing upstream
`git subtree push --prefix=kowala-assets/ kowala-assets develop`

#### Install dependencies
`cd kowala-assets/ && npm i & cd ..`


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

#### Social icons HTML sample

```
<link rel="apple-touch-icon" sizes="180x180" href="https://cdn.kowala.tech/images/meta/apple-touch-icon.png?v=69Pwvmj0bL">
<link rel="icon" type="image/png" sizes="32x32" href="https://cdn.kowala.tech/images/meta/favicon-32x32.png?v=69Pwvmj0bL">
<link rel="icon" type="image/png" sizes="16x16" href="https://cdn.kowala.tech/images/meta/favicon-16x16.png?v=69Pwvmj0bL">
<link rel="manifest" href="https://cdn.kowala.tech/images/meta/site.webmanifest?v=69Pwvmj0bL">
<link rel="mask-icon" href="ihttps://cdn.kowala.tech/images/meta/safari-pinned-tab.svg?v=69Pwvmj0bL" color="#5bbad5">
<link rel="shortcut icon" href="https://cdn.kowala.tech/images/meta/favicon.ico?v=69Pwvmj0bL">
<link href="images/fav/manifest.json" rel="manifest">
<meta name="apple-mobile-web-app-title" content="Kowala app">
<meta name="application-name" content="Kowala app">
<meta name="msapplication-config" content="https://cdn.kowala.tech/images/meta/browserconfig.xml">
<meta name="theme-color" content="#1d6986">
<meta name="apple-mobile-web-app-status-bar-style" content="#1d6986">
<meta property="og:url" content="https://kowala.tech" />
<meta property="og:title" content="Kowala app" />
<meta property="og:type" content="website">
<meta property="og:image" content="https://cdn.kowala.tech/images/meta/android-chrome-256x256.png" />
<meta name="twitter:image" content="https://cdn.kowala.tech/images/meta/android-chrome-256x256.png">
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:site" content="@Kowala app">
<meta name="twitter:creator" content="@Kowala app">
```
