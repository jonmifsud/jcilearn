var gulp = require('gulp'),
    sass = require('gulp-sass'),
    autoprefixer = require('gulp-autoprefixer'),
    minifycss = require('gulp-clean-css'),
    jshint = require('gulp-jshint'),
    uglify = require('gulp-uglify'),
    imagemin = require('gulp-imagemin'),
    rename = require('gulp-rename'),
    concat = require('gulp-concat'),
    notify = require('gulp-notify'),
    cache = require('gulp-cache'),
    livereload = require('gulp-livereload'),
    del = require('del');

var gulpif = require('gulp-if'),
	sprity = require('sprity');

gulp.task('default', ['clean'], function() {
    gulp.start('styles', 'scripts', 'images', 'sprites');
});

gulp.task('styles', function() {
  return gulp.src('src/styles/main.scss')
    .pipe(sass({ style: 'expanded', includePaths: ['node_modules/breakpoint-sass/stylesheets','node_modules/susy/sass'] }))
    .pipe(autoprefixer('last 2 version', 'safari 5', 'ie 8', 'ie 9', 'opera 12.1', 'ios 6', 'android 4'))
    .pipe(gulp.dest('assets/css'))
    .pipe(rename({suffix: '.min'}))
    .pipe(minifycss())
    .pipe(gulp.dest('assets/css'))
    .pipe(notify({ message: 'Styles task complete' }));
});

gulp.task('scripts', function() {
  // var s = scripts({});
  // s.on('error',function(e){
  //   gutil.log(e);
  //   s.end();
  // });
  return gulp.src([
      'src/scripts/lib/*.js',
      'src/scripts/custom/*.js'
      ])
    .pipe(jshint('.jshintrc'))
    .pipe(jshint.reporter('default'))
    .pipe(concat('main.js'))
    .pipe(gulp.dest('assets/js'))
    .pipe(rename({suffix: '.min'}))
    .pipe(uglify())
    .pipe(gulp.dest('assets/js'))
    .pipe(notify({ message: 'Scripts task complete' }));
});

gulp.task('images', function() {
  return gulp.src('src/images/**/*')
    // .pipe(imagemin({ optimizationLevel: 3, progressive: true, interlaced: true }))
    .pipe(cache(imagemin({ optimizationLevel: 5, progressive: true, interlaced: true })))
    .pipe(gulp.dest('assets/img'))
    .pipe(notify({ message: 'Images task complete' }));
});

gulp.task('sprites', function () {
  return sprity.src({
    src: './src/sprite/**/*.{png,jpg}',
    style: './_sprite.scss',
    cssPath: '../img',
    processor: 'sass',
    'style-type': 'scss',
    'dimension': [
      {
        ratio: 1, dpi: 72
      }, {
        ratio: 2, dpi: 144
      }
    ]
    // ... other optional options 
    // for example if you want to generate scss instead of css 
    // processor: 'sass', // make sure you have installed sprity-sass 
  })
  .pipe(gulpif('*.png', gulp.dest('./assets/img/'), gulp.dest('./src/styles/')))
});

// gulp.task('sprites', function () {
//   return gulp.src('src/sprite/*')
//     .pipe(sprity({
//       name: 'sprite',
//       style: '_sprite.scss',
//       cssPath: '../img',
//       processor: 'scss',
//       retina: true
//     }))
//     .pipe(gulpif('*.png', gulp.dest('assets/img/'), gulp.dest('src/styles/')))
// });

gulp.task('clean', function(cb) {
    del(['assets/css', 'assets/js', 'assets/img'], cb)
});

// Watch
gulp.task('watch', function() {
 
  // Watch .scss files
  gulp.watch('src/styles/**/*.scss', ['styles']);
 
  // Watch .js files
  gulp.watch('src/scripts/**/*.js', ['scripts']);
 
  // Watch image files
  gulp.watch('src/images/**/*', ['images']);

  // Watch image files
  gulp.watch('src/sprite/*', ['sprites']);
 
 
  // Create LiveReload server
  livereload.listen();
 
  // Watch any files in dist/, reload on change
  gulp.watch(['assets/**']).on('change', livereload.changed);
 
});