<!--
 * @FilePath     : \test-site\src\pages\Index.vue
 * @Date         : 2020-05-27 14:43:12
 * @LastEditTime : 2020-05-28 14:38:55
 * @Description  : 展示版首页
--> 
<template>
  <Layout>
    <div class="columns is-mobile">
      <div class="column">
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
                <p class="title is-4">小组一</p>
                <p class="subtitle is-6">@张三 @李四 @王五</p>
              </div>
            </div>

            <div class="content">
              创新实践小组介绍，字数应在200左右。
              <br />
              <a>@使用的技术链接</a>
              <a href="#">#对应的功能</a>
              <br />
              <time datetime="2020-5-27">2020.05.27 15:06</time>
            </div>
          </div>
          <footer class="card-footer">
            <!-- <a href="/projectInfo/" class="card-footer-item">项目详情</a> -->
            <g-link to="/project-info-1/" class="card-footer-item">项目详情</g-link>
            <g-link to="/project-info-1/member-info/" class="card-footer-item">成员介绍</g-link>
            <g-link to="/project-info-1/tech-info/" class="card-footer-item">技术总结</g-link>
          </footer>
        </div>
      </div>

      <div class="column">
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
                <p class="title is-4">小组二</p>
                <p class="subtitle is-6">@Alice @Bob @Cindy</p>
              </div>
            </div>

            <div class="content">
              Introdection, about 200 words.
              <br />
              <a>@tech link</a>
              <a href="#">#feature</a>
              <br />
              <time datetime="2020-5-28">2020.05.28 12:25</time>
            </div>
          </div>
          <footer class="card-footer">
            <!-- <a href="/projectInfo/" class="card-footer-item">项目详情</a> -->
            <g-link to="/project-info-2/" class="card-footer-item">项目详情</g-link>
            <g-link to="/project-info-2/member-info/" class="card-footer-item">成员介绍</g-link>
            <g-link to="/project-info-2/tech-info/" class="card-footer-item">技术总结</g-link>
          </footer>
        </div>
      </div>

      <div class="column">
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
                <p class="title is-4">实际效果组</p>
                <p class="subtitle is-6">@盛振中</p>
              </div>
            </div>

            <div class="content">
              这个例子里是我的博客RSS输出的效果。
              <br />
              <time datetime="2016-1-1">11:09 PM - 1 Jan 2016</time>
            </div>
          </div>
          <footer class="card-footer">
            <!-- <a href="/projectInfo/" class="card-footer-item">项目详情</a> -->
            <g-link to="/project-info-3/" class="card-footer-item">项目详情</g-link>
            <g-link to="/project-info-3/member-info/" class="card-footer-item">成员介绍</g-link>
            <g-link to="/project-info-3/tech-info/" class="card-footer-item">技术总结</g-link>
          </footer>
        </div>
      </div>

      <div class="column">
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
                <p class="title is-4">John Smith</p>
                <p class="subtitle is-6">@johnsmith</p>
              </div>
            </div>

            <div class="content">
              Lorem ipsum dolor sit amet, consectetur adipiscing elit.
              Phasellus nec iaculis mauris.
              <a>@bulmaio</a>.
              <a href="#">#css</a>
              <a href="#">#responsive</a>
              <br />
              <time datetime="2016-1-1">11:09 PM - 1 Jan 2016</time>
            </div>
          </div>
          <footer class="card-footer">
            <a href="#" class="card-footer-item">Save</a>
            <a href="#" class="card-footer-item">Edit</a>
            <a href="#" class="card-footer-item">Delete</a>
          </footer>
        </div>
      </div>
    </div>
  </Layout>
</template>

<script>
export default {};
</script>

<style>
</style>