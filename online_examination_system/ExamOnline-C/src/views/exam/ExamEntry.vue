<template>
  <div class="exam-container">
    <el-card class="box-card">
      <div class="header text-center">
        <h2>专业方向在线考试</h2>
        <p>考试时间：{{ examStart }}至{{ examEnd }}</p>
      </div>
      <div class="divider"></div>
      <!-- 添加黄色分割线 -->
      <div class="content">
        <div class="notice">
          <h3>考试须知：</h3>
          <ul>
            <li>考试时长60分钟，系统会在时间结束时自动提交。</li>
            <li>答题时请务必保持网络稳定，以免数据丢失。</li>
            <li>一经进入考试，即视为同意遵守考试规则。</li>
          </ul>
        </div>
        <el-checkbox v-model="readNotice"
          >我已阅读并同意以上考试须知</el-checkbox
        >
        <el-select
          v-model="selectedMajors"
          multiple
          multiple-limit="2"
          placeholder="请选择专业方向"
          @change="handleSelectChange"
          class="major-select"
        >
          <el-option
            v-for="major in majors"
            :key="major.value"
            :label="major.label"
            :value="major.value"
          >
          </el-option>
        </el-select>

        <el-button
          type="primary"
          @click="enterExam"
          :disabled="!readNotice || selectedMajors.length < 2"
          >进入考试</el-button
        >
      </div>
    </el-card>
  </div>
</template>

<script>
export default {
  data() {
    return {
      examStart: new Date().toLocaleTimeString(),
      examEnd: new Date(
        new Date().setHours(new Date().getHours() + 1)
      ).toLocaleTimeString(),
      readNotice: false,
      selectedMajors: [],
      majors: [
        { value: 1, label: "Java" },
        { value: 2, label: "Python" },
        { value: 3, label: "C++" },
        // 更多专业...
      ],
    };
  },
  methods: {
    enterExam() {
      if (this.readNotice && this.selectedMajors.length === 2) {
        // 使用路由的 params 或 query 参数传递 subjectIds
        this.$router.push({
          name: "exam",
          query: { subjectIds: this.selectedMajors.join(",") },
        });
      } else {
        this.$message.error("请确认已阅读须知并选择了两个专业方向");
      }
    },
    handleSelectChange(selected) {
      if (selected.length > 2) {
        this.$message.warning("只能选择两个专业方向");
      }
    },
  },
};
</script>

<style scoped>
/* 调整整体容器的大小和间隔 */
.exam-container {
  display: flex;
  justify-content: center;
  align-items: flex-start; /* 调整对齐方式为顶部对齐 */
  min-height: 90vh; /* 减少高度以使其偏向页面中上 */
  padding-top: 10vh; /* 添加顶部填充 */
  padding-bottom: 10vh; /* 增加底部填充，拉长页面 */
}

.box-card {
  width: 800px; /* 维持容器宽度 */
  border: 1px solid #ebebeb;
  padding: 40px; /* 增加内部间隔 */
  box-shadow: 0 2px 12px rgba(0, 0, 0, 0.1); /* 添加轻微阴影 */
}

/* 标题和时间居中显示 */
.text-center {
  text-align: center;
  display: flex;
  flex-direction: column;
  align-items: center;
}

.header h2 {
  margin-bottom: 20px;
  font-size: 28px; /* 增大标题字号 */
}

.header p {
  margin-bottom: 20px;
  font-size: 16px; /* 维持时间显示的字号 */
}

.notice {
  position: relative;
  padding-left: 20px;
  margin-bottom: 40px;
  font-size: 13px; /* 设置考试须知的字号 */
}

/* 为考试须知中的列表项设置样式 */
.notice ul li {
  font-size: 16px; /* 增加字号大小 */
  line-height: 1.8; /* 增加行间距，使得文本更易读 */
  margin-bottom: 10px; /* 增加列表项之间的间距 */
  color: #333; /* 可选：设置字体颜色以提高可读性 */
}

.notice h3 {
  font-size: 18px; /* 设置考试须知标题的字号 */
}

.notice::before {
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  height: 1.5em; /* 限制高度覆盖标题部分 */
  width: 3px;
  background-color: #409eff; /* Element UI 主题蓝 */
}

/* 分割线样式 */
.divider {
  height: 4px;
  width: 50px; /* 短横杠 */
  background-color: #ffd700; /* 黄色 */
  margin: 20px auto; /* 上下边距，并水平居中 */
}

.major-select {
  width: 100%;
  margin: 20px 0;
}

.enter-exam-btn {
  width: 100%;
  margin-top: 20px; /* 增加按钮顶部边距 */
  margin-bottom: 20px;
  font-size: 18px;
}
</style>
