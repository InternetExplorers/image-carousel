const merge = require('webpack-merge');
const common = require('./webpack.config.js');
const path = require('path');

const SRC_DIR = path.join(__dirname, '/client/src');
const DIST_DIR = path.join(__dirname, '/client/dist');

module.exports = merge(common, {
  mode: 'production',
  devtool: 'source-map',
  // entry: `${SRC_DIR}/components/ImageCarousel.jsx`,
});
