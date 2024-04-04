const defaultTheme = require('tailwindcss/defaultTheme')
const colors = require('tailwindcss/colors')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Helvetica', ...defaultTheme.fontFamily.sans],
        trajan: ['Trajan Pro'],
        calibri: ['Calibri']
      },
    },
    colors: {
      'RC-light': '#910803',
      'RC-dark': '#990000',
      'red': colors.red,
      'blue': colors.blue,
      'zinc': colors.zinc,
    }
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
