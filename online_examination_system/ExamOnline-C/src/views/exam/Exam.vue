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
                :class="{ answered: checkIfAnswered(question) }"
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
              <video v-if="question.video" controls width="800">
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
                      selected:
                        question.questionType === 2
                          ? question.userAnswer.includes(option.value)
                          : question.userAnswer === option.value,
                    }"
                    @click="
                      question.questionType === 2
                        ? selectMultipleAnswer(question, option.value)
                        : selectSingleAnswer(question, option.value)
                    "
                  >
                    {{ option.label }}
                  </button>
                  <span class="option-text">{{ option.text }}</span>
                </div>
              </div>
            </div>
          </div>
        </el-main>

        <!-- 右侧计时器和进度条 -->
        <el-aside width="200px" class="right" style="background-color: #f2f2f2">
          <div class="exam-info">
            <div class="timer">
              <h3>剩余时间</h3>
              <span>{{ formatTime(remainingTime) }}</span>
            </div>

            <div class="progress">
              <h3>答题进度</h3>
              <el-progress
                type="circle"
                :percentage="answeredPercentage"
              ></el-progress>
            </div>

            <br />

            <el-button type="primary" @click="submitExam"
              >Submit Exam</el-button
            >
          </div>
        </el-aside>
      </el-container>
    </el-container>
  </div>
</template>

<script>
import { fetchQuestions, submit } from "@/api/exam/question";
import "@fortawesome/fontawesome-free/css/all.css";

export default {
  props: ["subjectIds"],

  data() {
    return {
      subjectIds: [],
      questions: [],
      remainingTime: 3600, // 假设的时间剩余百分比
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
      });

      return [groups.single, groups.multiple, groups.boolean];
    },
    answeredPercentage() {
      const total = this.questions.length;
      if (total === 0) return 0; // 防止除以零的错误
      const answered = this.questions.filter((q) => {
        // 对于多选题，需要检查数组是否为空
        if (q.questionType === 2) {
          return q.userAnswer.length > 0;
        }
        // 对于单选和判断题，仅检查是否非null
        return q.userAnswer !== null;
      }).length;
      const percentage = (answered / total) * 100;
      return parseFloat(percentage.toFixed(2)); // 转换为两位小数并返回数值类型
    },
  },

  methods: {
    loadQuestions() {
      this.$emit("loading", true); // 可能需要向父组件发送正在加载的事件
      fetchQuestions(this.subjectIds)
        .then((response) => {
          this.questions = response.data.map((question, index) => ({
            ...question,
            index: index + 1,
            flagged: false,
            userAnswer: question.questionType === 2 ? [] : null,
            options: this.parseOptions(question.options),
          }));
          this.$emit("loading", false); // 加载完成
        })
        .catch((error) => {
          console.error("Failed to fetch questions based on subjects:", error);
          this.$emit("error", error); // 向父组件发送错误信息
        });
    },
    parseOptions(optionsString) {
      return optionsString.split(",").map((option) => {
        const [label, text] = option.split(":");
        return { label, value: label, text };
      });
    },
    startTimer() {
      const timer = setInterval(() => {
        if (this.remainingTime > 0) {
          this.remainingTime--;
        } else {
          clearInterval(timer);
          this.submitExam(); // 自动提交试卷
        }
      }, 1000);
    },
    calculateDuration(remainingTime) {
      const totalTime = 3600; // 总考试时间设为3600秒，即1小时
      return totalTime - remainingTime; // 返回用时
    },
    formatTime(seconds) {
      const m = Math.floor(seconds / 60);
      const s = seconds % 60;
      return `${m}分${s.toString().padStart(2, "0")}秒`; // 输出格式为“xx分xx秒”
    },
    scrollToQuestion(index) {
      const element = document.getElementById(`question-${index}`);
      if (element) {
        element.scrollIntoView({ behavior: "smooth", block: "start" });
      }
    },
    checkIfAnswered(question) {
      if (question.questionType === 2) {
        // 多选题，检查userAnswer数组是否非空
        return question.userAnswer && question.userAnswer.length > 0;
      }
      // 单选题和判断题，检查userAnswer是否非null
      return question.userAnswer !== null;
    },
    submitExam() {
      const answers = this.questions.map((question) => ({
        questionId: question.id,
        userAnswer: Array.isArray(question.userAnswer)
          ? question.userAnswer.join("")
          : question.userAnswer,
      }));

      const submissionData = {
        answers: answers,
        subjectIds: this.subjectIds,
      };

      submit(submissionData)
        .then((response) => {
          const examId = response.data.examId;
          const score = response.data.score;

          this.$message({
            message: `您的得分是：${score}分`,
            type: "success",
          });

          let usedTimeInSeconds = this.calculateDuration(this.remainingTime);
          let formattedDuration = this.formatTime(usedTimeInSeconds);

          this.$router.push({
            name: "exam-result",
            query: {
              examId: examId,
              score: score,
              duration: formattedDuration,
            },
          });
        })
        .catch((error) => {
          console.error("Failed to submit exam:", error);
          this.$message.error("提交试卷失败，请稍后重试");
        });
    },
    selectSingleAnswer(question, value) {
      question.userAnswer = value;
    },
    selectMultipleAnswer(question, value) {
      const index = question.userAnswer.indexOf(value);
      if (index === -1) {
        question.userAnswer.push(value);
      } else {
        question.userAnswer.splice(index, 1);
      }
    },
    toggleFlag(question) {
      question.flagged = !question.flagged; // 切换标记状态
    },
  },

  mounted() {
    this.subjectIds = this.$route.query.subjectIds
      ? this.$route.query.subjectIds.split(",")
      : [];
    this.loadQuestions();
    this.startTimer();
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

.selected {
  background-color: #409eff;
  color: #fff;
  border-color: #409eff;
}

.option-text {
  margin-left: 10px;
}

.selected {
  background-color: #409eff;
  color: #fff;
  border-color: #409eff;
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
</style>
