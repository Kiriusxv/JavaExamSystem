package com.ruoyi.exam.service;


import com.ruoyi.exam.domain.ExamDetail;
import com.ruoyi.exam.domain.ExamHistory;
import com.ruoyi.exam.domain.ExamSubmission;

import java.util.List;

public interface ExamService {
    int calculateScore(ExamSubmission submission);

    List<ExamDetail> getExamDetails(Long examId);

    List<ExamHistory> getExamHistory();
}
