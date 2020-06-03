<!--
 * @FilePath     : \test-site\src\pages\projectInfo_4\TechColumn.vue
 * @Date         : 2020-05-29 11:27:21
 * @LastEditTime : 2020-05-31 16:19:06
 * @Description  : 技术专栏，小组内部按时间排序
--> 
<template>
  <Layout>
    <TechColumnCard
      v-for="post in posts"
      :key="post.id"
      :title="post.title"
    ></TechColumnCard>
  </Layout>
</template>

<page-query>
    query {
    posts: allFreshRss {
            edges {
            node {
                id
                title
            }
            }
        }
    }
</page-query>

<script>
export default { };
</script>

<style></style>
