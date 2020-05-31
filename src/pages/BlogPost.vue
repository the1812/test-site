<template>
  <Layout>
    <div v-for="edge in $page.posts.edges" :key="edge.node.id">
      <h2>{{ edge.node.title }}</h2>
      <p>{{ edge.node.date }}</p>
      <p v-html="edge.node.content"></p>
    </div>
  </Layout>
</template>
<page-query>
query BlogPosts {
  posts: allBlogPost {
    edges {
      node {
        id
        title
        date
        content
      }
    }
  }
}
</page-query>

<script>
export default {}
</script>