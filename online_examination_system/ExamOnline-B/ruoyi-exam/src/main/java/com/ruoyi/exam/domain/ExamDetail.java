package com.examol.exam.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;



@Data
@AllArgsConstructor
@NoArgsConstructor
public class ExamDetail {
    private Question question;
    private String userAnswer;
    private Boolean isCorrect;
}
