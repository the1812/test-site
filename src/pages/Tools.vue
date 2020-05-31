<!--
 * @FilePath     : \test-site\src\pages\Tools.vue
 * @Date         : 2020-05-21 09:40:31
 * @LastEditTime : 2020-05-31 19:29:59
 * @Description  : 工具页面，可将开发的项目链接于此处
--> 

<template>
  <Layout>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" />
    <div class="columns">
      <div class="column is-one-quarter left-bar">
        <!-- <section class="hero is-fullheight">
          <aside class="menu">
            <p class="menu-label">General</p>
            <ul class="menu-list">
              <li>
                <g-link to="/">首页</g-link>
              </li>
              <li>
                <g-link to="/Column/">专栏</g-link>
              </li>
            </ul>
            <p class="menu-label">Team</p>
            <ul class="menu-list">
              <li>
                <a>团队详情</a>
              </li>
              <li>
                <a class="is-active">团队任务</a>
                <ul>
                  <li>
                    <a>已完成</a>
                  </li>
                  <li>
                    <a>进行中</a>
                  </li>
                  <li>
                    <a>待解决</a>
                  </li>
                </ul>
              </li>
              <li>
                <a>团队交流</a>
              </li>
            </ul>
            <p class="menu-label">User</p>
            <ul class="menu-list">
              <li>
                <a>我的资料</a>
              </li>
              <li>
                <a>我的动态</a>
              </li>
              <li>
                <b-button type="is-danger" outlined>退出登录</b-button>
              </li>
            </ul>
          </aside>
        </section>-->
        <b-menu>
          <b-menu-list label="General">
            <b-menu-item icon=" " label="首页" tag="router-link" to="/"></b-menu-item>
            <b-menu-item icon=" " label="专栏" tag="router-link" to="/Column"></b-menu-item>
            <b-menu-item icon="settings">
              <template slot="label" slot-scope="props">
                团队
                <b-icon class="is-pulled-right" :icon="props.expanded ? 'menu-down' : 'menu-up'"></b-icon>
              </template>
              <b-menu-item icon=" " label="团队详情"></b-menu-item>
              <b-menu-item icon=" " label="团队任务">
                <b-menu-item label="待解决"></b-menu-item>
                <b-menu-item label="进行中"></b-menu-item>
                <b-menu-item label="已完成"></b-menu-item>
              </b-menu-item>
              <b-menu-item icon=" " label="团队交流" disabled></b-menu-item>
            </b-menu-item>
            <!-- <b-menu-item icon=" " label="工具">
              <b-menu-item label="文档编辑器"></b-menu-item>
              <b-menu-item label="在线演示文档"></b-menu-item>
            </b-menu-item>-->
            <b-menu-item icon="settings" :active="isActive" expanded>
              <template slot="label">
                工具
                <b-icon class="is-pulled-right"></b-icon>
              </template>
              <b-menu-item label="文档编辑器"></b-menu-item>
              <b-menu-item label="在线演示文档"></b-menu-item>
            </b-menu-item>
          </b-menu-list>
          <b-menu-list>
            <b-menu-item label="资料库" icon="link" tag="router-link" target="_blank" to="/expo"></b-menu-item>
          </b-menu-list>
          <b-menu-list label="User">
            <b-menu-item icon label="用户资料"></b-menu-item>
            <b-menu-item label="用户管理">
              <b-button type="is-info" outlined>修改资料</b-button>
              <b-button type="is-danger" outlined>退出登录</b-button>
            </b-menu-item>
          </b-menu-list>
        </b-menu>
      </div>
      <div class="column is-mobile">
        <div class="card">
          <div class="card-image">
            <figure class="image is-4by3">
              <img src="https://bulma.io/images/placeholders/1280x960.png" alt="Placeholder image" />
            </figure>
          </div>
          <div class="card-content">
            <div class="media">
              <div class="media-left">
                <figure class="image is-48x48">
                  <img src="https://bulma.io/images/placeholders/96x96.png" alt="Placeholder image" />
                </figure>
              </div>
              <div class="media-content">
                <p class="title is-4">文档编辑器</p>
                <p class="subtitle is-6">@Gitbook</p>
              </div>
            </div>

            <div class="content">
              使用Gitbook编辑已有文档。
              <a href="https://www.gitbook.com/">@gitbook</a>.
              <a href="/#">#gitbook</a>
              <a href="/#">#responsive</a>
              <br />
              <time datetime="2016-1-1">11:09 PM - 1 Jan 2016</time>
            </div>
          </div>
        </div>
      </div>
      <div class="column is-mobile">
        <div class="card">
          <div class="card-image">
            <figure class="image is-4by3">
              <img src="https://bulma.io/images/placeholders/1280x960.png" alt="Placeholder image" onclick="window.open('http://101.132.159.246/ppt/demo')" />
            </figure>
          </div>
          <div class="card-content">
            <div class="media">
              <div class="media-left">
                <figure class="image is-48x48">
                  <img src="https://bulma.io/images/placeholders/96x96.png" alt="Placeholder image" />
                </figure>
              </div>
              <div class="media-content">
                <p class="title is-4">在线演示文档</p>
                <p class="subtitle is-6">@szz1204</p>
              </div>
            </div>

            <div class="content">
              使用在线编辑演示文档。这里是一个示例。
              <br />
              <time datetime="2020-5-21">11:09 AM - 21 May 2020</time>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Learn how to use images here: https://gridsome.org/docs/images -->
  </Layout>
</template>

<script>
export default {
  metaInfo: {
    title: "工具"
  }
};
</script>

<style>
/* .content {
  max-width: 760px;
  margin: 0 auto;
  padding-left: 20px;
  padding-right: 20px;
} */

.home-links a {
  margin-right: 1rem;
}
</style>
