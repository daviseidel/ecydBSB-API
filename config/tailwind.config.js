const defaultTheme = require('tailwindcss/defaultTheme')
const colors = require('tailwindcss/colors')
const shadcnConfig = require("./shadcn.tailwind.js");

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
      'RC-light': '#C1272D',
      'RC-dark': '#990000',
      'red': colors.red,
      'blue': colors.blue,
      'zinc': colors.zinc,
      'gray': {
        100: '#C1272D',
      },
    }
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ],
  ...shadcnConfig,
}
