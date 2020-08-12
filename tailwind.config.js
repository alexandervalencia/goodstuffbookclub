const defaultTheme = require('tailwindcss/defaultTheme');

module.exports = {
  purge: ['./app/components/**/*.html.erb', './app/views/**/*.html.erb'],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Raleway', ...defaultTheme.fontFamily.sans],
      },
    },
  },
  variants: {},
  plugins: [],
};
