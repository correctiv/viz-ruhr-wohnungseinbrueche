# viz-ruhr-wohnungseinbrueche

[preview](https://correctiv.github.io/viz-ruhr-wohungseinbrueche/dist/)

build stack based on [this fork](https://github.com/simonwoerpel/yet-another-webpack-es6-riot-starterkit) of [this great startkit](https://github.com/wbkd/yet-another-webpack-es6-starterkit)

### Installation

```
npm install
```

### Start Dev Server

```
npm run dev
```

### Build Prod Version

```
npm run build
```

### Features:

* ES6 Support via [babel-loader](https://github.com/babel/babel-loader)
* SASS Support via [sass-loader](https://github.com/jtangelder/sass-loader)
* Linting via [eslint-loader](https://github.com/MoOx/eslint-loader)
* Hot Module Replacement

When you run `npm run build` we use the [extract-text-webpack-plugin](https://github.com/webpack/extract-text-webpack-plugin) to move the css to a separate file and included in the head of your `index.html`, so that the styles are applied before any javascript gets loaded. We disabled this function for the dev version, because the loader doesn't support hot module replacement.
