package com.examol.exam.service;


import com.examol.exam.domain.ExamDetail;
import com.examol.exam.domain.ExamHistory;
import com.examol.exam.domain.ExamSubmission;

import java.util.List;

public interface ExamService {
    int calculateScore(ExamSubmission submission);

    List<ExamDetail> getExamDetails(Long examId);

    List<ExamHistory> getExamHistory();
}
