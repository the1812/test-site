<!--
 * @FilePath     : \test-site\src\pages\member\Index.vue
 * @Date         : 2020-05-31 20:43:03
 * @LastEditTime : 2020-05-31 21:13:41
 * @Description  : 成员详情页面，包括所有成员的信息、简介及任务分工等
--> 
<template>
  <Layout>
    <nav class="breadcrumb is-medium" aria-label="breadcrumbs">
      <ul>
        <li>
          <a href="/" aria-current="page">首页</a>
        </li>
        <li class="is-active">
          <a href="#" aria-current="page">成员信息</a>
        </li>
      </ul>
    </nav>
    <div class="">
      <article class="media">
        <figure class="media-left">
          <p class="image is-64x64">
            <img src="https://bulma.io/images/placeholders/128x128.png" />
          </p>
        </figure>
        <div class="media-content">
          <div class="content">
            <p>
                <g-link to="/member/szz/"><strong>成员一</strong> </g-link>
              
              <br />这里是个人介绍。
              <br />
            </p>
          </div>

          <article class="media">
            <!-- <figure class="media-left">
              <p class="image is-48x48">
                <img src="https://bulma.io/images/placeholders/96x96.png" />
              </p>
            </figure> -->
            <div class="media-content">
              <div class="content">
                <p>
                  <strong>学习经历</strong>
                  <br />Donec sollicitudin urna eget eros malesuada sagittis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam blandit nisl a nulla sagittis, a lobortis leo feugiat.
                  <br />
                  <small>
                    <a>Like</a> ·
                    <a>Reply</a> · 2 hrs
                  </small>
                </p>
              </div>

              <article
                class="media"
              >Vivamus quis semper metus, non tincidunt dolor. Vivamus in mi eu lorem cursus ullamcorper sit amet nec massa.</article>

              <article
                class="media"
              >Morbi vitae diam et purus tincidunt porttitor vel vitae augue. Praesent malesuada metus sed pharetra euismod. Cras tellus odio, tincidunt iaculis diam non, porta aliquet tortor.</article>
            </div>
          </article>

          <article class="media">
            <figure class="media-left">
              <p class="image is-48x48">
                <img src="https://bulma.io/images/placeholders/96x96.png" />
              </p>
            </figure>
            <div class="media-content">
              <div class="content">
                <p>
                  <strong>Kayli Eunice</strong>
                  <br />Sed convallis scelerisque mauris, non pulvinar nunc mattis vel. Maecenas varius felis sit amet magna vestibulum euismod malesuada cursus libero. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus lacinia non nisl id feugiat.
                  <br />
                  <small>
                    <a>Like</a> ·
                    <a>Reply</a> · 2 hrs
                  </small>
                </p>
              </div>
            </div>
          </article>
        </div>
      </article>
    </div>
  </Layout>
</template>

<script>
export default {};
</script>

<style>
</style>