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
            <b-menu-item icon=" " label="首页" tag="router-link" to="/" :active="isActive"></b-menu-item>
            <b-menu-item icon=" " label="专栏" tag="router-link" to="/Column"></b-menu-item>
            <b-menu-item icon="settings" expanded>
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
            <b-menu-item icon=" " label="工具" tag="router-link" to="/Tools">
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
      <div class="column middle-bar">
        <article class="media content">
          <figure class="media-left">
            <p class="image is-64x64">
              <img src="https://bulma.io/images/placeholders/128x128.png" alt="Image" />
            </p>
          </figure>
          <div class="media-content">
            <div class="field">
              <p class="control">
                <textarea class="textarea" placeholder="发表你的动态……"></textarea>
              </p>
            </div>
            <nav class="level">
              <div class="level-left">
                <div class="level-item">
                  <a class="button is-info">发布</a>
                </div>
              </div>
              <div class="level-right">
                <div class="level-item">
                  <label class="checkbox">
                    <input type="checkbox" /> 使用Enter键发布
                  </label>
                </div>
              </div>
            </nav>
          </div>
        </article>
        <div class="content">
          <div class="box">
            <article class="media">
              <div class="media-left">
                <figure class="image is-64x64">
                  <img src="https://bulma.io/images/placeholders/128x128.png" alt="Image" />
                </figure>
              </div>
              <div class="media-content">
                <div class="content">
                  <p>
                    <strong>用户昵称</strong>
                    <small>@author</small>
                    <br />这是一段测试文字。
                  </p>
                </div>
                <nav class="level is-mobile">
                  <div class="level-left">
                    <a class="level-item" aria-label="reply">
                      <span class="icon is-small">
                        <i class="fas fa-reply" aria-hidden="true"></i>
                      </span>
                    </a>
                    <a class="level-item" aria-label="retweet">
                      <span class="icon is-small">
                        <i class="fas fa-retweet" aria-hidden="true"></i>
                      </span>
                    </a>
                    <a class="level-item" aria-label="like">
                      <span class="icon is-small">
                        <i class="fas fa-heart" aria-hidden="true"></i>
                      </span>
                    </a>
                  </div>
                </nav>
              </div>
            </article>
          </div>
        </div>
        <div class="content">
          <div class="box">
            <article class="media">
              <div class="media-left">
                <figure class="image is-64x64">
                  <img src="https://bulma.io/images/placeholders/128x128.png" alt="Image" />
                </figure>
              </div>
              <div class="media-content">
                <div class="content">
                  <p>
                    <strong>用户昵称</strong>
                    <small>@author2</small>
                    <br />这是较早的动态的测试文字。
                  </p>
                </div>
                <nav class="level is-mobile">
                  <div class="level-left">
                    <a class="level-item" aria-label="reply">
                      <span class="icon is-small">
                        <i class="fas fa-reply" aria-hidden="true"></i>
                      </span>
                    </a>
                    <a class="level-item" aria-label="retweet">
                      <span class="icon is-small">
                        <i class="fas fa-retweet" aria-hidden="true"></i>
                      </span>
                    </a>
                    <a class="level-item" aria-label="like">
                      <span class="icon is-small">
                        <i class="fas fa-heart" aria-hidden="true"></i>
                      </span>
                    </a>
                  </div>
                </nav>
              </div>
            </article>
          </div>
        </div>
      </div>
      <div class="column right-bar">
        <section class="hero is-fullheight">
          <section>
            <div class="file notification is-info">
              <p class="title">其他小组进度</p>
            </div>
            <article class="media" v-for="i in media" :key="i">
              <figure class="media-left">
                <p class="image is-64x64">
                  <b-skeleton circle width="64px" height="64px"></b-skeleton>
                </p>
              </figure>
              <div class="media-content">
                <div class="content">
                  <p>
                    <b-skeleton active></b-skeleton>
                    <b-skeleton height="80px"></b-skeleton>
                  </p>
                </div>
                <nav class="level is-mobile">
                  <div class="level-left">
                    <a class="level-item">
                      <span class="icon is-small">
                        <b-skeleton></b-skeleton>
                      </span>
                    </a>
                    <a class="level-item">
                      <span class="icon is-small">
                        <b-skeleton></b-skeleton>
                      </span>
                    </a>
                  </div>
                </nav>
              </div>
            </article>
          </section>
        </section>
      </div>
    </div>
    <!-- Learn how to use images here: https://gridsome.org/docs/images -->
  </Layout>
</template>

<script>
export default {
  metaInfo: {
    title: "首页"
  },
  data() {
    return {
      media: 3,
      isActive: true
    };
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
