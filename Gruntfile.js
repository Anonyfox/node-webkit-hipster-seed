module.exports = function(grunt) {
  grunt.initConfig({
    pkg: grunt.file.readJSON('src/package.json'),
    nodewebkit: {
      options: {
        version: "0.8.3",
        build_dir: './builds',
        // specifiy what to build
        mac: true,
        win: true,
        linux32: false,
        linux64: false
      },
      src: './src/_public/**/*'
    },
  });

  grunt.loadNpmTasks('grunt-node-webkit-builder');

  grunt.registerTask('default', ['nodewebkit']);
};
