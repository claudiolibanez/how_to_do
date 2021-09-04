/** @type {import('next').NextConfig} */
module.exports = {
  reactStrictMode: true,
  i18n: {
    locales: ['en-US', 'pt-br'],
    defaultLocale: 'pt-br',
  },

  async rewrites() {
    return [
      {
        source: '/usuarios',
        destination: '/users'
      }
    ]
  }
}
