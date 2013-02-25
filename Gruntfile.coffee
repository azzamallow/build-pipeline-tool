module.exports = (grunt) ->

  grunt.initConfig
    jasmine:
      src: 'src/**/*.coffee'
      options:
        specs: 'spec/**/*.coffee'

  grunt.loadNpmTasks 'grunt-contrib-jasmine'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'default', 'jasmine'