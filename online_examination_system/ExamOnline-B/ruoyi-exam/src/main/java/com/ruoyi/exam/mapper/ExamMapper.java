package com.examol.exam.mapper;

import com.examol.exam.domain.ExamDetail;
import com.examol.exam.domain.ExamHistory;
import com.examol.exam.domain.ExamSubmission;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface ExamMapper {
    // 插入考试结果
    int insert(ExamSubmission examSubmission);

    void insertAnswer(@Param("answer") ExamSubmission.Answer answer, @Param("examId") Long examId);

    List<ExamDetail> getExamDetails(Long examId);

    List<ExamHistory> getExamHistory(Long userId);
}
