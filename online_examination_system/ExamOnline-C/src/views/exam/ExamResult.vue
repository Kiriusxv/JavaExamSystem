<template>
  <div class="exam-results">
    <div
      class="score-display"
      style="
        background-color: #409eff;
        padding: 20px;
        text-align: center;
        color: white;
      "
    >
      <div class="score-circle" :style="{ '--score-value': score }">
        <span class="score">{{ score }}</span>
      </div>
      <p v-if="finalScore >= 60">恭喜您，您已通过本次考试！</p>
      <p v-else>很遗憾，您没有通过本次考试。</p>
    </div>

    <el-card class="box-card" style="margin: 20px">
      <div slot="header" class="clearfix">
        <span>考试结果详情</span>
      </div>
      <el-row :gutter="20">
        <el-col :span="8"><strong>成绩:</strong> {{ score }}</el-col>
        <el-col :span="8"><strong>用时:</strong> {{ duration }}</el-col>
        <el-col :span="8"><strong>交卷时间:</strong> {{ submitTime }}</el-col>
      </el-row>
      <div class="exam-actions-container">
        <el-card class="actions-card">
          <el-row class="action-item">
            <el-button
              block
              type="primary"
              class="action-button"
              @click="viewAnswerAnalysis"
              >查看答案解析</el-button
            >
          </el-row>
          <el-row class="action-item">
            <el-button
              block
              type="primary"
              class="action-button"
              @click="viewScoreHistory"
              >查看历史成绩</el-button
            >
          </el-row>
          <el-row class="action-item">
            <el-button block type="primary" class="action-button"
              >问题反馈</el-button
            >
          </el-row>
          <el-row class="action-item">
            <el-button block type="primary" class="action-button"
              >错题练习</el-button
            >
          </el-row>
        </el-card>
      </div>
      <el-row style="margin-top: 20px">
        <el-button type="primary" block @click="goBack">返回首页</el-button>
      </el-row>
    </el-card>
  </div>
</template>

<script>
export default {
  data() {
    return {
      examId: this.$route.query.examId,
      score: 0, // 初始化分数为0
      finalScore: parseInt(this.$route.query.score, 10), // 假设最终分数是82
      duration: this.$route.query.duration,
      submitTime: new Date().toLocaleString(),
    };
  },
  methods: {
    goBack() {
      this.$router.push({
        name: "Index",
      });
    },
    animateScore() {
      if (this.finalScore === 0) return;
      let start = 0;
      const end = this.finalScore;
      const duration = 3000; // 动画时长为3000毫秒
      const stepTime = duration / end;

      const timer = setInterval(() => {
        start++;
        this.score = start;
        if (start === end) clearInterval(timer);
      }, stepTime);
    },
    viewAnswerAnalysis() {
      this.$router.push({
        name: "exam-review",
        query: { examId: this.examId, score: this.finalScore },
      });
    },
    viewScoreHistory() {
      this.$router.push({
        name: "score-history",
        query: { examId: this.examId, score: this.finalScore },
      });
    },
  },
  mounted() {
    this.animateScore(); // 开始动画
  },
};
</script>

<style scoped>
.exam-results {
  margin: 0 auto; /* 水平居中显示 */
  max-width: 800px; /* 最大宽度，根据需要调整 */
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* 可选，添加阴影效果增加层次感 */
  padding: 20px; /* 内部间距 */
}

.score-display {
  background-color: #409eff; /* 背景为蓝色 */
  text-align: center;
  color: white;
  padding: 20px 0;
}

@keyframes score-rise {
  from {
    transform: scale(0.5);
    opacity: 0;
  }
  to {
    transform: scale(1);
    opacity: 1;
  }
}

.score-circle {
  display: inline-block;
  background: linear-gradient(
    to top,
    rgba(255, 255, 255, 0.3),
    rgba(255, 255, 255, 0.9)
  );
  border-radius: 50%;
  width: 100px;
  height: 100px;
  line-height: 100px;
  color: #409eff;
  font-size: 24px;
  font-weight: bold;
  position: relative;
  animation: score-rise 3s ease-in-out forwards;
}

.score-circle::before {
  content: attr(data-score); /* 使用 data-score 属性显示分数 */
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  animation: score-rise 3s ease-in-out forwards;
}
.score {
  font-size: 24px;
  font-weight: bold;
}

.exam-results .el-card .el-button {
  width: 100%;
}

.el-row {
  margin-top: 10px;
}

.exam-actions-container {
  display: flex;
  justify-content: center;
  padding: 20px;
}

.actions-card {
  width: 50%; /* 控制卡片占页面宽度的一半 */
  box-shadow: none; /* 移除阴影效果 */
}

.action-item {
  margin-bottom: 10px; /* 每个动作项之间的间隔 */
}

.action-button {
  width: 100%; /* 按钮宽度填满容器 */
  border: none; /* 去掉边框 */
  border-radius: 4px; /* 轻微圆角效果 */
  height: 50px; /* 设置按钮高度 */
  line-height: 50px; /* 调整文字行高以垂直居中，确保与按钮高度一致 */
  background-color: #f5f7fa; /* 设置背景颜色 */
  color: #606266; /* 设置文字颜色 */
  font-size: 16px; /* 文字大小 */
  margin: 10px 0; /* 增加垂直间距 */
  text-align: center; /* 文字水平居中 */
  display: flex;
  align-items: center; /* 使用flex布局使文字垂直居中 */
  justify-content: center; /* 水平居中 */
  padding: 0 15px; /* 添加一些水平内边距 */
}
</style>
