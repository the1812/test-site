<!--
 * @FilePath     : \test-site\src\components\TechInfoCard.vue
 * @Date         : 2020-05-29 11:36:23
 * @LastEditTime : 2020-05-31 12:18:46
 * @Description  : 技术博客页每一篇的展示卡片
-->
<template>
  <div class="card" :id="{source: source}">
    <div class="card-content">
      <p class="title">{{$page.sspai.edges[0].node.title}}</p>
      <p class="subtitle">作者：{{$page.sspai.edges[0].node.creator}}</p>

      <b-collapse :open="false" position="is-bottom" aria-id="contentIdForA11y1">
        <a slot="trigger" slot-scope="props" aria-controls="contentIdForA11y1">
          <b-icon :icon="!props.open ? 'menu-down' : 'menu-up'"></b-icon>
          {{ !props.open ? '查看全文' : '收起' }}
        </a>
        <div class="content">
          <span v-html="$page.sspai.edges[0].node.content"></span>
        </div>
      </b-collapse>
    </div>

    <footer class="card-footer">
      <p class="card-footer-item">
        <span>
          <a :href="$page.sspai.edges[0].node.link" target="_blank">查看源网页</a>
        </span>
      </p>
      <p class="card-footer-item">
        <span>
          <a href="#">发表评论</a>
        </span>
      </p>
    </footer>
  </div>
</template>

<static-query>
  
</static-query>

<script>
export default {
  name: 'TechColumnCard',
  props: {
    
  }
};
</script>

<style>
</style>
