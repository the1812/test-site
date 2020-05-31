<!--
 * @FilePath     : \test-site\src\pages\projectInfo_3\TechInfo.vue
 * @Date         : 2020-05-27 15:33:40
 * @LastEditTime : 2020-05-28 14:48:04
 * @Description  : 技术总结页
--> 
<template>
  <Layout>
    <section class="hero is-primary">
      <div class="hero-body">
        <div class="container">
          <h1 class="title">技术总结测试页</h1>
          <h2 class="subtitle">以经过渲染的RSS形式呈现，现在的内容来自我的RSS</h2>
        </div>
      </div>
    </section>
    <!-- 如果columns内的column数组元素数量超过可显示量则无法显示页面 -->
    <div class="columns">
      <div class="column is-three-quarters">
        <div class="card" :id="$page.szz_rss.edges[0].node.id">
          <div class="card-content">
            <p class="title">{{$page.szz_rss.edges[0].node.title}}</p>
            <p class="subtitle">作者：{{$page.szz_rss.edges[0].node.creator}}</p>

            <b-collapse :open="false" position="is-bottom" aria-id="contentIdForA11y1">
              <a slot="trigger" slot-scope="props" aria-controls="contentIdForA11y1">
                <b-icon :icon="!props.open ? 'menu-down' : 'menu-up'"></b-icon>
                {{ !props.open ? '查看全文' : '收起' }}
              </a>
              <div class="content">
                <span v-html="$page.szz_rss.edges[0].node.content"></span>
              </div>
            </b-collapse>
          </div>

          <footer class="card-footer">
            <p class="card-footer-item">
              <span>
                <a :href="$page.szz_rss.edges[0].node.link" target="_blank">查看源网页</a>
              </span>
            </p>
            <p class="card-footer-item">
              <span>
                <a href="#">发表评论</a>
              </span>
            </p>
          </footer>
        </div>

        <div class="card" :id="$page.szz_rss.edges[1].node.id">
          <div class="card-content">
            <p class="title">{{$page.szz_rss.edges[1].node.title}}</p>
            <p class="subtitle">作者：{{$page.szz_rss.edges[1].node.creator}}</p>

            <b-collapse :open="false" position="is-bottom" aria-id="contentIdForA11y1">
              <a slot="trigger" slot-scope="props" aria-controls="contentIdForA11y1">
                <b-icon :icon="!props.open ? 'menu-down' : 'menu-up'"></b-icon>
                {{ !props.open ? '查看全文' : '收起' }}
              </a>
              <div class="content">
                <span v-html="$page.szz_rss.edges[1].node.content"></span>
              </div>
            </b-collapse>
          </div>

          <footer class="card-footer">
            <p class="card-footer-item">
              <span>
                <a :href="$page.szz_rss.edges[1].node.link" target="_blank">查看源网页</a>
              </span>
            </p>
            <p class="card-footer-item">
              <span>
                <a href="#">发表评论</a>
              </span>
            </p>
          </footer>
        </div>

        <div class="card" :id="$page.szz_rss.edges[2].node.id">
          <div class="card-content">
            <p class="title">{{$page.szz_rss.edges[2].node.title}}</p>
            <p class="subtitle">作者：{{$page.szz_rss.edges[2].node.creator}}</p>

            <b-collapse :open="false" position="is-bottom" aria-id="contentIdForA11y1">
              <a slot="trigger" slot-scope="props" aria-controls="contentIdForA11y1">
                <b-icon :icon="!props.open ? 'menu-down' : 'menu-up'"></b-icon>
                {{ !props.open ? '查看全文' : '收起' }}
              </a>
              <div class="content">
                <span v-html="$page.szz_rss.edges[2].node.content"></span>
              </div>
            </b-collapse>
          </div>

          <footer class="card-footer">
            <p class="card-footer-item">
              <span>
                <a :href="$page.szz_rss.edges[2].node.link" target="_blank">查看源网页</a>
              </span>
            </p>
            <p class="card-footer-item">
              <span>
                <a href="#">发表评论</a>
              </span>
            </p>
          </footer>
        </div>

        <!-- <div class="card" :id="$page.szz_rss.edges[3].node.id">
          <div class="card-content">
            <p class="title">{{$page.szz_rss.edges[3].node.title}}</p>
            <p class="subtitle">作者：{{$page.szz_rss.edges[3].node.creator}}</p>

            <b-collapse :open="false" position="is-bottom" aria-id="contentIdForA11y1">
              <a slot="trigger" slot-scope="props" aria-controls="contentIdForA11y1">
                <b-icon :icon="!props.open ? 'menu-down' : 'menu-up'"></b-icon>
                {{ !props.open ? '查看全文' : '收起' }}
              </a>
              <div class="content">
                <span v-html="$page.szz_rss.edges[3].node.content"></span>
              </div>
            </b-collapse>
          </div>

          <footer class="card-footer">
            <p class="card-footer-item">
              <span>
                <a :href="$page.szz_rss.edges[3].node.link" target="_blank">查看源网页</a>
              </span>
            </p>
            <p class="card-footer-item">
              <span>
                <a href="#">发表评论</a>
              </span>
            </p>
          </footer>
        </div> -->
      </div>
      <div class="column">这里考虑放目录</div>
    </div>
  </Layout>
</template>

<page-query>
query {
    szz_rss: allFreshRss(filter:{link:{regex: "/blog.foundation42.work/" }}, sortBy:"id", order:DESC) {
        edges {
            node {
                id
                title
                creator
                content
                link
            }
        }
    }
}
</page-query>

<script>
export default {
  name: "技术总结-项目组二",
  metaInfo: {
    title: "技术总结"
  }
};
</script>

<style>
</style>