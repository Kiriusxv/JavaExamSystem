<template>
  <div class="history-results">
    <div class="history-header">历史成绩</div>
    <el-card class="box-card">
      <el-table
        :data="scoreData"
        border
        style="width: 100%"
        @row-click="handleRowClick"
      >
        <el-table-column prop="examId" label="#" width="50"> </el-table-column>
        <el-table-column prop="date" label="日期"> </el-table-column>
        <el-table-column prop="score" label="成绩" width="200">
          <template v-slot="scope">
            <el-tag :type="scope.row.score > 0 ? 'success' : 'danger'">{{
              scope.row.score
            }}</el-tag>
          </template>
        </el-table-column>
      </el-table>
    </el-card>
    <el-row>
      <el-button
        class="back-button"
        type="primary"
        icon="el-icon-arrow-left"
        @click="goBack"
        :style="{
          textalign: 'center',
        }"
        >返回首页</el-button
      >
      <div class="pagination-container">
        <el-pagination
          @current-change="handlePageChange"
          :current-page="queryParams.pageNum"
          :page-size="queryParams.pageSize"
          :total="total"
          layout="total, prev, pager, next, jumper"
        >
        </el-pagination>
      </div>
    </el-row>
  </div>
</template>

<script>
import { listScores } from "@/api/exam/question";
export default {
  data() {
    return {
      total: 0,
      examId: this.$route.query.examId,
      score: this.$route.query.score,
      scoreData: [
        { examId: 1, date: "07-12 22:12~07-12 22:12", score: 19.3 },
        { examId: 2, date: "07-11 18:43~07-11 19:02", score: 0.0 },
        // 更多数据...
      ],
      queryParams: {
        pageNum: 1,
        pageSize: 10,
      },
    };
  },
  methods: {
    handlePageChange(newPage) {
      this.queryParams.pageNum = newPage;
      this.getScoreHistory(); // Call the method to fetch data for the new page
    },
    getScoreHistory() {
      this.loading = true;
      listScores(this.queryParams)
        .then((response) => {
          this.total = response.total;
          this.scoreData = response.rows;
          this.loading = false;
        })
        .catch((error) => {
          console.error("Failed to fetch scores:", error);
          this.loading = false;
        });
    },
    handleRowClick(row) {
      // 使用 Vue Router 进行路由跳转
      this.$router.push({
        name: "exam-result",
        query: { examId: row.examId, score: row.score },
      });
    },
    goBack() {
      this.$router.push({
        name: "Index",
      });
    },
  },
  mounted() {
    this.getScoreHistory();
  },
};
</script>

<style scoped>
.history-results {
  min-height: 55vh; /* 视口高度的100% */
  margin: 20px auto;
  max-width: 800px; /* 控制最大宽度 */
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* 添加阴影效果 */
}

.history-header {
  background-color: #409eff;
  color: white;
  padding: 20px;
  text-align: center;
  font-size: 20px;
}

.box-card {
  margin: 10px;
}

.el-table {
  box-shadow: none; /* 移除表格阴影，保持简洁 */
}

.pagination-container {
  display: flex;
  justify-content: center; /* 确保元素水平居中 */
  align-items: center; /* 确保元素垂直居中 */
  padding: 0 10px; /* 为容器添加一些内边距 */
  transform: translateY(-40px) translateX(-50px); /* 同时应用两个转换 */
  width: 100%;
}

.back-button,
.back-button * {
  position: relative;
  z-index: 1000; /* 确保比周围元素高 */
  margin-right: 20px; /* 增加右边距 */
  margin-bottom: 20px; /* 添加底部边距，使按钮向下移动 */
  padding: 5px 40px; /* 增加水平内边距，使按钮更长 */
  position: relative; /* 相对定位 */
  top: 40px; /* 向下移动 */
  right: -120px; /* 向右移动 */
}

.back-button::after {
  content: ""; /* 你可以在这里加入空格 ' ' 或者其他符号 */
  display: inline-block;
  width: 15px; /* 控制空格的宽度 */
}
</style>
