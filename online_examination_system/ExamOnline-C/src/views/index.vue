<template>
  <div id="exam-system">
    <div class="overlay"></div>
    <!-- 添加的遮罩层 -->
    <header class="header">
      <h1 class="title">在线考试系统</h1>
    </header>

    <main class="content">
      <section class="welcome">
        <h2 class="sub-title">欢迎</h2>
        <p class="description">
          该在线考试系统提供了一个方便的学习和评估环境，帮助您随时测试知识掌握程度。
        </p>
      </section>

      <section class="about">
        <h3 class="sub-title">关于在线考试系统</h3>
        <p class="description">
          我们致力于提供高质量的在线考试体验，涵盖Java、Python、C++三种科目，支持多种题型，以满足不同学习者的需求。
        </p>
      </section>
    </main>

    <footer class="footer">
      <p class="copyright">&copy; 2024 在线考试系统. All rights reserved.</p>
    </footer>
  </div>
</template>

<script>
export default {
  name: "ExamSystemIndex",
};
</script>

<style scoped>
#exam-system {
  display: flex;
  flex-direction: column;
  min-height: 100vh;
  background-color: #f5f5f5; /* 更改为柔和的背景色 */
  background-image: url("src/assets/images/1.jpg");
  background-size: cover;
  color: #ffa500;
  font-family: sans-serif;
}

.overlay {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.5); /* 半透明的黑色遮罩 */
  z-index: 1; /* 确保遮罩在背景图片之上 */
}

.header,
.content,
.footer {
  position: relative;
  z-index: 2; /* 确保内容在遮罩层之上 */
  color: #fff; /* 内容的颜色也设置为白色 */
}

.header {
  padding: 2em;
  text-align: center;
  animation: fadeInDown 1s ease-out;
}

.title {
  font-size: 3rem;
  letter-spacing: 2px;
  font-weight: bold;
}

.content {
  flex-grow: 1;
  padding: 2em;
  display: flex;
  flex-direction: column;
  justify-content: center;
}

.sub-title {
  font-size: 2rem;
  margin-bottom: 1em;
  font-weight: bold;
}

.description {
  font-size: 1.2rem;
  line-height: 1.6;
  opacity: 0.8;
}

.footer {
  padding: 1em;
  text-align: center;
  animation: fadeInUp 1s ease-in;
}

.copyright {
  font-size: 0.9rem;
  opacity: 0.5;
}

@keyframes fadeInDown {
  from {
    transform: translateY(-20px);
    opacity: 0;
  }
  to {
    transform: translateY(0);
    opacity: 1;
  }
}

@keyframes fadeInUp {
  from {
    transform: translateY(20px);
    opacity: 0;
  }
  to {
    transform: translateY(0);
    opacity: 1;
  }
}
</style>
