<template>
  <Layout>
    <div class="tile is-ancestor">
      <div class="tile is-parent">
        <article class="tile is-child notification is-info">
          <div class="content">
            <p class="title">关于本网站</p>
            <p class="subtitle">简介</p>
            <div class="content">
              <p>本网站使用Vue.js及Gridsome框架，后端接入多种信息源，可实现创新实践项目的基本需求</p>
            </div>
          </div>
        </article>
      </div>
    </div>
  </Layout>
</template>

<script>
export default {
  metaInfo: {
    title: 'About us'
  }
}
</script>
