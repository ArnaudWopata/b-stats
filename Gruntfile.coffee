module.exports = (grunt)->

  grunt.initConfig
    coffee:
      compile:
        files:
          'js/app/main.js': ['src/coffee/*.coffee']
    sass:
      dist:
        files:
          'style/style.css': 'src/sass/*.sass'
    concat:
      dist:
        src: ['js/vendor/*.js', 'js/app/main.js']
        dest: 'js/script.js'

    watch:
      scripts:
        files: ['**/*.coffee']
        tasks: ['coffee']
        options:
          livereload: true
      styles:
        files: ['**/*.sass']
        tasks: ['sass']
        options:
          livereload: true
      concats:
        files: ['js/app/*.js']
        tasks: ['concat']
        options:
          livereload: true
      pages:
        files: ['**/*.html']
        options:
          livereload: true

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-contrib-concat'

  grunt.registerTask 'default', ['coffee', 'sass', 'concat']
