// Server API makes it possible to hook into various parts of Gridsome
// on server-side and add custom data to the GraphQL data layer.
// Learn more: https://gridsome.org/docs/server-api/

// Changes here require a server restart.
// To restart press CTRL + C in terminal and run `gridsome develop`
const axios = require('axios')

module.exports = function (api) {
  api.loadSource(async actions => {
    
  /*
  
  // Use the Data Store API here: https://gridsome.org/docs/data-store-api/
    const  videoDataAll  = await axios.get('https://api.bilibili.com/x/web-interface/view?aid=625653117')
    
    const videoData = videoDataAll.data
    // const data = JSON.parse(data)

    // Create a new GraphQL Collection
    const BiliVedio = actions.addCollection('Bilivedio')

    // Add data to the new collection
    BiliVedio.addNode({
      videoInfo: videoData
    })
  
  */
    
  })

  api.createPages(({ createPage }) => {
    // Use the Pages API here: https://gridsome.org/docs/pages-api/
  })
}
