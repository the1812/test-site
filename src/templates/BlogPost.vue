<template>
  <Layout>
    <div>{{$page.blogPost.title}}</div>
    <div v-html="$page.blogPost.content"></div>
  </Layout>
</template>
<page-query>
query BlogPosts ($path: String!) {
  blogPost (path: $path) {
    id
    title
    date (format: "YYYY-MM-DD")
    content
  }
}
</page-query>
<script>
export default {}
</script>