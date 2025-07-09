module.exports = {
  globDirectory: '_site',
  globPatterns: [
    '**/*.{html,js,css,png,jpg,jpeg,svg,gif,woff2,woff}'
  ],
  swDest: '_site/sw.js',
  skipWaiting: true,
  clientsClaim: true,
  runtimeCaching: [
    {
      urlPattern: ({request}) => request.destination === 'document',
      handler: 'StaleWhileRevalidate'
    },
    {
      urlPattern: ({request}) => ['style','script','worker'].includes(request.destination),
      handler: 'StaleWhileRevalidate'
    },
    {
      urlPattern: ({request}) => ['image','font'].includes(request.destination),
      handler: 'CacheFirst',
      options: {
        expiration: {
          maxEntries: 60,
          maxAgeSeconds: 60 * 60 * 24 * 30 // 30 Days
        }
      }
    }
  ]
};