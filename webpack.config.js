const Encore = require('@symfony/webpack-encore');
const webpack = require('webpack');
const UglifyJsPlugin = require('uglifyjs-webpack-plugin');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');
const OptimizeCssAssetsPlugin = require('optimize-css-assets-webpack-plugin');
const timeCompile = new Date().getFullYear() + '-' + (new Date().getMonth() + 1) + '-' + new Date().getDate() + ' ' + new Date().getHours() + ':' + new Date().getMinutes();
const banner = [
  '',
  '!!! WARNING !!!',
  'Este archivo se genera automaticamente.',
  'No lo edite porque perderá los cambios la próxima vez que se compile!',
  '',
  '',
  'Plen.co - Desarrollo Web',
  'WebDeveloped by Diego Plenco',
  '@link https://plen.co',
  '',
  '',
  'PRODUCTION: ' + timeCompile,
  '',
  '\n',
  ''
].join('\n');

Encore
  .setOutputPath('public/build/')
  .setPublicPath('/build')
  // Main JS
  .addEntry('app', './assets/js/app.js')
  // Custom JS
  //.addEntry('main', './assets/js/main.js')

  .copyFiles({
    from: './assets/images',
    to: 'images/[path][name].[ext]',
    to: 'images/[path][name].[hash:8].[ext]',
    pattern: /\.(png|jpg|jpeg)$/
  })

  .splitEntryChunks()
  .enableSingleRuntimeChunk()

  .cleanupOutputBeforeBuild()
  .enableBuildNotifications()
  .enableSourceMaps(!Encore.isProduction())
  .enableVersioning(Encore.isProduction())

  .autoProvidejQuery()
  .addPlugin(new UglifyJsPlugin({
    minify(file) {
      return require('terser').minify(file);
    }

  }))
  .addPlugin(new MiniCssExtractPlugin({
    filename: "[name].css"
  }))
  .addPlugin(new OptimizeCssAssetsPlugin({
    assetNameRegExp: /\.css$/g,
    cssProcessor: require('cssnano'),
    cssProcessorPluginOptions: {
      preset: ['default', {
        discardComments: {
          removeAll: true
        }
      }],
    },
    canPrint: true
  }))
  .addPlugin(new webpack.BannerPlugin(banner));

module.exports = Encore.getWebpackConfig();
