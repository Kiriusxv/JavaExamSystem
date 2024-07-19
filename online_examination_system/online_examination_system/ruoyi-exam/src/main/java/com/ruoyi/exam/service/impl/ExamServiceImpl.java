package com.ruoyi.exam.service.impl;

import com.ruoyi.common.core.domain.model.LoginUser;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.exam.domain.ExamDetail;
import com.ruoyi.exam.domain.ExamHistory;
import com.ruoyi.exam.domain.ExamSubmission;
import com.ruoyi.exam.domain.Question;
import com.ruoyi.exam.mapper.ExamMapper;
import com.ruoyi.exam.mapper.QuestionMapper;
import com.ruoyi.exam.service.ExamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
public class ExamServiceImpl implements ExamService {
    @Autowired
    private QuestionMapper questionMapper;

    @Autowired
    private ExamMapper examMapper;

    @Override
    public int calculateScore(ExamSubmission submission) {
        submission.setUserId(SecurityUtils.getUserId());
        submission.setExamDate(LocalDateTime.now());

        // 提取所有问题的ID
        List<Long> questionIds = submission.getAnswers().stream()
                .map(ExamSubmission.Answer::getQuestionId)
                .collect(Collectors.toList());

        // 一次性查询所有问题
        List<Question> questions = questionMapper.getBySubjectIds(submission.getSubjectIds());

        // 将问题列表转换为Map，便于快速查找
        Map<Long, Question> questionMap = questions.stream()
                .collect(Collectors.toMap(Question::getId, question -> question));

        int score = 0;
        // 遍历提交的答案，与正确答案比较
        for (ExamSubmission.Answer answer : submission.getAnswers()) {
            Question question = questionMap.get(answer.getQuestionId());
            if (question != null && question.getCorrect().equals(answer.getUserAnswer())) {
                answer.setCorrect(true);
                score += question.getScore();
            }else {
                answer.setCorrect(false);
            }
        }

        submission.setScore(score);
        // 保存考试结果
        examMapper.insert(submission);

        for (ExamSubmission.Answer answer : submission.getAnswers()) {
            examMapper.insertAnswer(answer, submission.getId());
        }

        return score;
    }

    @Override
    public List<ExamDetail> getExamDetails(Long examId) {
        return examMapper.getExamDetails(examId);
    }

    @Override
    public List<ExamHistory> getExamHistory() {
        Long userId = SecurityUtils.getUserId();
        return examMapper.getExamHistory(userId);
    }


}
