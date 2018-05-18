const path = require('path');
const MiniCssExtractPlugin = require("mini-css-extract-plugin");
const PATHS = {
  SRC: path.resolve(__dirname, 'assets/js/app.js'),
  STATIC: path.resolve(__dirname, 'priv/static/')
};

const WebPack = {
  mode: 'development',
  entry: {
    app: PATHS.SRC
  },
  output: {
    filename: 'js/app.bundle.js',
    path: PATHS.STATIC
  },
  module: {
    rules: [{
      test: /\.js$/,
      exclude: /node_modules/,
      use: {
        loader: 'babel-loader',
        options: {
          presets: ['env']
        }
      },
    }, {
      test: /\.scss$/,
      use: [
          MiniCssExtractPlugin.loader,
          'css-loader',
          'postcss-loader',
          'sass-loader',
        ]
    }]
  },
  plugins: [
    new MiniCssExtractPlugin({
      filename: "css/[name].css",
      chunkFilename: "css[id].css"
    })
  ]
};

module.exports = WebPack;
