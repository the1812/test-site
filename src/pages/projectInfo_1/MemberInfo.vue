<!--
 * @FilePath     : \test-site\src\pages\projectInfo_1\MemberInfo.vue
 * @Date         : 2020-05-27 15:32:35
 * @LastEditTime : 2020-05-28 16:47:36
 * @Description  : 成员介绍页
--> 
<template>
  <Layout>
    <div>
      <h1>{{$page.bv.edges[0].node.videoInfo.data.aid}}</h1>
    </div>
    <figure class="image is-16by9">
    <iframe
      class="has-ratio"
      width="640"
      height="360" 
      :src="'//player.bilibili.com/player.html?aid=' + $page.bv.edges[0].node.videoInfo.data.aid + '&bvid=' + $page.bv.edges[0].node.videoInfo.data.bvid + '&cid=' + $page.bv.edges[0].node.videoInfo.data.pages[0].cid + '&page=' + $page.bv.edges[0].node.videoInfo.data.pages[0].page"
      scrolling="no"
      border="0"
      frameborder="no"
      framespacing="0"
      allowfullscreen="true"
    ></iframe>
    </figure>
  </Layout>
</template>

<!---
<page-query>
query {
  bv: allBilivedio {
    edges {
      node {
        videoInfo {
          data {
            aid
            bvid
            pages {
              cid
              page
            }
          }
        }
      }
    }
  }
}
</page-query>
--->

<script>
export default {};
</script>

<style>
</style>