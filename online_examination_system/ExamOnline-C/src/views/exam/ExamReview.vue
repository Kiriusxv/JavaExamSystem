<template>
  <div class="exam-container">
    <el-container
      direction="vertical"
      style="border: 1px solid #ebebeb; margin: 10px"
    >
      <!-- 头部标题 -->
      <el-header
        style="
          padding-left: 20px;
          line-height: 60px;
          background-color: #f2f2f2;
          color: #333;
          font-size: 24px;
          font-weight: bold;
          border-bottom: 1px solid #ebebeb;
        "
      >
        Online Examination System
      </el-header>

      <br />

      <!-- 主体布局 -->
      <el-container>
        <!-- 答题卡侧边栏 -->
        <el-aside class="answer-card">
          <div class="answer-card-content">答题卡</div>
          <div
            v-for="group in groupedQuestions"
            :key="group.content"
            class="section"
          >
            <div class="section-content">{{ group.content }}</div>
            <div class="question-grid">
              <div
                v-for="question in group.questions"
                :key="question.id"
                class="question-item"
                :class="{
                  correct: question.isCorrect === true,
                  incorrect: question.isCorrect === false,
                }"
                @click="scrollToQuestion(question.index)"
              >
                <!-- 根据是否标记显示不同的图标或数字 -->
                <i v-if="question.flagged" class="fas fa-flag"></i>
                <span v-else>{{ question.index }}</span>
              </div>
            </div>
          </div>
        </el-aside>

        <el-main>
          <!-- 循环遍历分组后的问题 -->
          <div
            v-for="group in groupedQuestions"
            :key="group.content"
            class="group"
          >
            <h3 class="group-title">{{ group.content }}</h3>
            <div
              v-for="question in group.questions"
              :key="question.id"
              class="question"
              :id="'question-' + question.index"
            >
              <div class="question-content">
                {{ question.index }}. {{ question.content }}
                <span class="flag-icon" @click="toggleFlag(question)">
                  <i v-if="question.flagged" class="fas fa-flag"></i>
                  <i v-else class="far fa-flag"></i>
                </span>
              </div>
              <img
                v-if="question.image"
                :src="question.image"
                class="question-image"
              />
              <video v-if="question.video" controls width="500">
                <source :src="question.video" type="video/mp4" />
                您的浏览器不支持视频标签。
              </video>
              <div class="options-container">
                <div
                  class="option-item"
                  v-for="option in question.options"
                  :key="option.value"
                >
                  <button
                    :class="{
                      'option-circle': true,
                      correct:
                        question.questionType === 2
                          ? question.correctAnswer.includes(option.label)
                          : question.correctAnswer === option.label,
                      incorrect:
                        question.userAnswer.includes(option.label) &&
                        !question.correctAnswer.includes(option.label),
                    }"
                  >
                    {{ option.label }}
                  </button>
                  <span class="option-text">{{ option.text }}</span>
                </div>
              </div>
              <!-- 答案显示区，添加背景色样式 -->
              <div
                class="answer-section"
                :class="{
                  'background-correct': question.isCorrect,
                  'background-incorrect': question.isCorrect === false,
                }"
              >
                <!-- 在这里添加得分显示 -->
                <div>
                  <strong>得分:</strong>
                  {{ question.isCorrect ? question.score : 0 }}
                </div>
                <div>
                  <strong>标准答案:</strong> {{ question.correctAnswer }}
                </div>
                <div>
                  <strong>我的答案:</strong>
                  {{ formatAnswer(question.userAnswer) }}
                </div>
                <el-divider content-position="center">试题解析</el-divider>
                <div>{{ question.explanation }}</div>
              </div>
              <br />
            </div>
          </div>
        </el-main>

        <el-aside width="200px" class="right" style="background-color: #f2f2f2">
          <div class="exam-info"></div>
          <div class="exam-info">
            <div class="timer">
              <h3>得分</h3>
              <span>{{ (this, score) }}</span>
            </div>

            <!-- 错题开关 -->
            <div>
              <h3>只看错题</h3>
              <el-switch v-model="showOnlyIncorrect"></el-switch>
            </div>

            <br />

            <el-button type="primary" @click="goBack">返回</el-button>
          </div>
        </el-aside>
      </el-container>
    </el-container>
  </div>
</template>

<script>
import { fetchExamDetails } from "@/api/exam/question";
import "@fortawesome/fontawesome-free/css/all.css";

export default {
  data() {
    return {
      examId: this.$route.query.examId,
      score: this.$route.query.score,
      showOnlyIncorrect: false,
      questions: [
        {
          id: 14,
          index: "14",
          content: "多选题：以下哪些元素属于周期表中的卤素？",
          type: 2,
          options: [
            { label: "A", value: "Fluorine", text: "氟" },
            { label: "B", value: "Argon", text: "氩" },
            { label: "C", value: "Chlorine", text: "氯" },
            { label: "D", value: "Bromine", text: "溴" },
          ],
          userAnswer: ["A"],
          correctAnswer: ["A", "C", "D"],
          explanation: "氟、氯和溴属于卤素。",
          isCorrect: true,
        },
      ],
    };
  },

  computed: {
    groupedQuestions() {
      const groups = {
        single: {
          content: "单选题",
          questions: [],
        },
        multiple: {
          content: "多选题",
          questions: [],
        },
        boolean: {
          content: "判断题",
          questions: [],
        },
      };

      this.questions.forEach((question) => {
        if (!this.showOnlyIncorrect || !question.isCorrect) {
          if (question.questionType === 1) {
            // 假设 1 代表单选题
            groups.single.questions.push(question);
          } else if (question.questionType === 2) {
            // 假设 2 代表多选题
            groups.multiple.questions.push(question);
          } else if (question.questionType === 3) {
            // 假设 3 代表判断题
            groups.boolean.questions.push(question);
          }
        }
      });

      return [groups.single, groups.multiple, groups.boolean];
    },
  },

  methods: {
    goBack() {
      this.$router.push({
        name: "exam-result",
        query: { examId: this.examId, score: this.score },
      });
    },
    loadExamDetails() {
      this.$emit("loading", true);
      fetchExamDetails(this.examId)
        .then((response) => {
          this.questions = response.data.map((item, index) => ({
            ...item.question,
            index: index + 1,
            flagged: false,
            correctAnswer: item.question.correct,
            userAnswer: item.userAnswer,
            isCorrect: item.isCorrect,
            userAnswer: item.userAnswer === null ? [] : item.userAnswer,
            options: this.parseOptions(item.question.options),
          }));
          this.$emit("loading", false); // 加载完成
          console.log(this.questions);
        })
        .catch((error) => {
          console.error("获取考试详情失败:", error);
          this.$emit("error", error);
        });
    },
    parseOptions(optionsString) {
      return optionsString.split(",").map((option) => {
        const [label, text] = option.split(":");
        return { label, value: label, text };
      });
    },
    scrollToQuestion(index) {
      const element = document.getElementById(`question-${index}`);
      if (element) {
        element.scrollIntoView({ behavior: "smooth", block: "start" });
      }
    },
    toggleFlag(question) {
      question.flagged = !question.flagged; // 切换标记状态
    },
    formatAnswer(answer) {
      if (Array.isArray(answer)) {
        return answer.join(", ");
      }
      return answer;
    },
  },

  mounted() {
    this.loadExamDetails();
  },
};
</script>

<style scoped>
body {
  background-color: #f7f7f7; /* 设定整体页面的背景色为灰色 */
}

body,
html {
  height: 100%;
  margin: 0;
  overflow-y: auto; /* 允许在整个页面上滚动 */
}

.el-container {
  height: 100vh; /* 视窗高度，确保整个容器充满整个视窗 */
  display: flex;
  flex-direction: column; /* 垂直布局 */
}

.el-main,
.el-header,
.el-aside {
  background-color: #fff; /* 设置卡片为白色 */
  margin: 10px; /* 为每个卡片添加外边距，使它们看起来分离 */
  box-shadow: 0 2px 12px rgba(0, 0, 0, 0.1); /* 添加阴影，增强立体感 */
  border-radius: 8px; /* 边角圆滑 */
}

.el-header {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  z-index: 100;
  background-color: #f2f2f2; /* 确保背景不透明 */
}

.el-aside {
  position: fixed;
  top: 70px; /* 假设 header 高度为60px */
  bottom: 0;
  width: 300px;
  overflow-y: auto; /* 如果侧边内容过多，允许滚动 */
}

.el-aside.right {
  right: 0;
}

.el-main {
  margin-top: 60px; /* 留出顶部空间，避免被 header 遮挡 */
  margin-left: 400px; /* 左侧边栏宽度，避免被左侧 aside 遮挡 */
  margin-right: 300px; /* 同理，避免被右侧 aside 遮挡 */
}

.exam-container {
  margin: 20px;
}

.section {
  border-bottom: 1px solid #ebebeb;
  padding: 10px;
}

.section-content {
  font-weight: bold;
  margin-bottom: 10px;
}

.answer-card {
  background-color: #fff;
  padding: 10px;
  box-sizing: border-box;
}

.answer-card-content {
  font-size: 16px;
  font-weight: bold;
  margin-bottom: 10px;
  text-align: center;
}

.section-content {
  margin-top: 10px;
  font-size: 14px;
  text-align: center;
}

.question-grid {
  display: grid;
  grid-template-columns: repeat(5, 1fr); /* 保持每行显示五个方块 */
  gap: 10px; /* 增加方块之间的间隙 */
}

.question-item {
  width: 40px; /* 增大方块的大小 */
  height: 40px; /* 使方块高度等于宽度，成为正方形 */
  line-height: 40px; /* 调整文本行高以保证居中 */
  text-align: center;
  border: 1px solid #ccc;
  cursor: pointer;
  transition: background-color 0.3s;
}

.question-item.answered {
  background-color: #409eff; /* Element UI的主题蓝色 */
  color: #fff;
  border-color: #409eff;
}

.question-item.correct {
  background-color: #67c23a; /* 正确答案的绿色 */
  color: #fff;
  border-color: #67c23a;
}

.question-item.incorrect {
  background-color: #f56c6c; /* 错误答案的红色 */
  color: #fff;
  border-color: #f56c6c;
}

.question-box {
  padding: 20px;
  border: 1px solid #ccc;
  margin-bottom: 20px;
}

.question-content {
  font-weight: bold;
}

.exam-info {
  padding: 20px;
}

.options-container {
  margin-top: 10px;
}

.option-item {
  display: flex;
  align-items: center;
  margin-bottom: 10px;
}

.option-circle {
  width: 40px;
  height: 40px;
  line-height: 40px;
  text-align: center;
  border-radius: 50%;
  border: 1px solid #ccc;
  background-color: #fff;
  margin-right: 10px;
  cursor: pointer;
  outline: none;
  display: inline-block; /* Ensure the button doesn't stretch */
}

.option-text {
  margin-left: 10px;
}

.selected {
  background-color: #409eff;
  color: #fff;
  border-color: #409eff;
}

.correct {
  color: #fff;
  background-color: #67c23a; /* 正确答案的绿色 */
}

.incorrect {
  color: #fff;
  background-color: #f56c6c; /* 错误答案的红色 */
}

.flag-icon {
  cursor: pointer; /* 使图标可点击 */
  color: #ff0000; /* 设置图标为红色 */
  margin-left: 10px; /* 确保图标和文本有些间隔 */
}

.flag-icon i {
  transition: color 0.3s; /* 平滑颜色过渡效果 */
}

.flag-icon:hover i {
  color: #cc0000; /* 鼠标悬浮时变为深红色 */
}

.timer span {
  color: #ec4141; /* 设置字体颜色为红色 */
  font-weight: bold; /* 加粗字体以突出显示 */
  padding: 5px 10px; /* 添加一些内边距以便于阅读 */
  border-radius: 5px; /* 可选，设置边角圆滑 */
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* 可选，添加轻微阴影效果 */
}

.question-image {
  max-width: 100%; /* 限制图片最大宽度，避免溢出 */
  height: auto; /* 高度自动 */
  margin: 10px 0; /* 上下留些间距 */
}

.group {
  margin-bottom: 20px; /* 每组之间的间隔 */
}

.group-title {
  margin-bottom: 15px;
  padding: 15px;
  background-color: #e3f2fd; /* 更淡的背景色 */
  border-radius: 10px;
  color: #333;
  font-size: 20px; /* 增加字体大小 */
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* 轻微的阴影效果 */
  border: 1px solid #b0bec5; /* 边框颜色 */
  font-weight: bold; /* 字体加粗 */
}
.background-correct {
  background-color: #e8f5e9; /* 淡绿色 */
}

.background-incorrect {
  background-color: #ffebee; /* 淡红色 */
}

.answer-section {
  border-radius: 10px;
  border: 1px solid #b0bec5; /* 边框颜色 */
  padding: 10px;
  border-top: 1px solid #ccc;
  margin-top: 10px;
}

.answer-section > div {
  margin-bottom: 5px; /* 间隔调整 */
}

.timer span {
  color: #ec4141; /* 设置字体颜色为红色 */
  font-weight: bold; /* 加粗字体以突出显示 */
  padding: 5px 10px; /* 添加一些内边距以便于阅读 */
  border-radius: 5px; /* 可选，设置边角圆滑 */
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* 可选，添加轻微阴影效果 */
}
</style>
