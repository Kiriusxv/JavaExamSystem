package com.ruoyi.exam.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ExamSubmission {
    private Long id;
    private Long userId;
    private int score;
    private LocalDateTime examDate;
    private List<Answer> answers;
    private List<Integer> subjectIds;

    @Data
    @AllArgsConstructor
    @NoArgsConstructor
    public static class Answer {
        private Long questionId;
        private String userAnswer;
        private boolean isCorrect;
    }

}
