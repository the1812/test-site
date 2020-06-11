<!--
 * @FilePath     : \test-site\src\pages\Index.vue
 * @Date         : 2020-05-31 14:22:32
 * @LastEditTime : 2020-05-31 21:18:12
 * @Description  : 首页第三版，加入流展示与跳转项
-->
<template>
  <Layout>
    <nav class="breadcrumb is-medium" aria-label="breadcrumbs">
      <ul>
        <li class="is-active">
          <a href="#" aria-current="page">首页</a>
        </li>
      </ul>
    </nav>
    <div class="columns">
      <div class="column is-8">
        <div class="tile is-vertical is-parent">
          <div
            class="tile is-child"
            v-for="(post, index) in $page.posts.edges"
            :key="index"
            :id="index"
          >
            <section>
              <b-collapse
                class="card"
                aria-id="contentIdForA11y3"
                :open="isOpen == index"
                @open="isOpen = index"
              >
                <div
                  slot="trigger"
                  slot-scope="props"
                  class="card-header"
                  role="button"
                  aria-controls="contentIdForA11y3"
                >
                  <p class="card-header-title">
                    {{post.node.title}}&#12288;
                    <a>@{{post.node.creator}}</a>
                  </p>
                  <a class="card-header-icon">
                    <b-icon :icon="props.open ? 'menu-down' : 'menu-up'"></b-icon>
                  </a>
                </div>
                <div class="card-content">
                  <div class="content">
                    <span v-html="post.node.content"></span>
                  </div>
                </div>
                <footer class="card-footer">
                  <a class="card-footer-item" :href="/per-page/">详情</a>
                  <a class="card-footer-item">评论</a>
                  <a class="card-footer-item">分享</a>
                </footer>
              </b-collapse>
            </section>
          </div>
        </div>
      </div>
      <div class="column is-3">
        <div class="board">
          <div class="tile is-parent is-vertical" id="board">
            <a class="tile" id="banner" :href="/class-info/">
              <article class="tile is-child notification is-info">
                <p class="banner-title">班级详情</p>
              </article>
            </a>
            <a class="tile" id="banner" :href="/group-info/">
              <article class="tile is-child notification is-primary">
                <p class="banner-title">小组详情</p>
              </article>
            </a>
            <a class="tile" id="banner" :href="/member/">
              <article class="tile is-child notification is-success">
                <p class="banner-title">成员信息</p>
              </article>
            </a>
          </div>
        </div>
      </div>
    </div>
  </Layout>
</template>

<page-query>
query {
posts: allFreshRssTest(sortBy:"date", order:ASC) {
        edges {
        node {
            id
            title
            content
            creator
        }
        previous {
            id
        }
        }
    }
}
</page-query>

<script>
export default {
  data() {
    return {
      isOpen: 0
    };
  }
};
</script>

<style>
.tile.is-vertical > .tile.is-child:not(:last-child) {
  margin-bottom: 0.5rem !important;
}
.title {
  color: #363636;
  font-size: 1.75rem;
  /* font-weight: 600; */
  line-height: 0.875;
}
#banner {
  margin: 0.25em;
}
.banner-title {
  color: white;
  font-size: 1.25rem;
  font-weight: 100;
  line-height: 0.875;
}
.tile {
  min-height: auto;
}
</style>
