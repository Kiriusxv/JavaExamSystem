package com.examol.exam.controller;

import com.examol.common.core.controller.BaseController;
import com.examol.common.core.domain.AjaxResult;
import com.examol.common.core.page.TableDataInfo;
import com.examol.exam.domain.ExamDetail;
import com.examol.exam.domain.ExamHistory;
import com.examol.exam.domain.ExamSubmission;
import com.examol.exam.service.ExamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.examol.common.utils.PageUtils.startPage;


@RestController
@RequestMapping("/exam")
public class ExamController extends BaseController {

    @Autowired
    private ExamService examService;

    @PostMapping("/submit")
    public AjaxResult submitExam(@RequestBody ExamSubmission submission) {
        // 计算分数
        int score = examService.calculateScore(submission);
        // 提取 examId
        Long examId = submission.getId();
        // 创建一个 map 来包含返回的数据
        Map<String, Object> responseData = new HashMap<>();
        responseData.put("score", score);
        responseData.put("examId", examId);

        // 返回成功响应，包含分数和考试ID
        return AjaxResult.success("考试已成功提交", responseData);
    }

    @GetMapping("/details/{examId}")
    public AjaxResult getExamDetails(@PathVariable Long examId) {
        List<ExamDetail> examDetails = examService.getExamDetails(examId);
        return AjaxResult.success(examDetails);
    }

    // 获取所有历史成绩
    @GetMapping("/score-history")
    public TableDataInfo getExamHistory() {
        startPage();
        List<ExamHistory> exams = examService.getExamHistory();
        return getDataTable(exams);
    }

}
