<template>
  <Layout>
    <div v-for="edge in $page.posts.edges" :key="edge.node.id">
      <a :href="edge.node.path">{{edge.node.title}}</a>
      <p>{{ edge.node.date }}</p>
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
        path
      }
    }
  }
}
</page-query>

<script>
export default {}
</script>