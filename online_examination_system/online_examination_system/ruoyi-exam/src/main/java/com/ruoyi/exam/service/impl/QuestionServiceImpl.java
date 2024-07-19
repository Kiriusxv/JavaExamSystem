package com.ruoyi.exam.service.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.exam.mapper.QuestionMapper;
import com.ruoyi.exam.domain.Question;
import com.ruoyi.exam.service.IQuestionService;

/**
 * 试题列表Service业务层处理
 * 
 * @author group
 * @date 2024-07-09
 */
@Service
public class QuestionServiceImpl implements IQuestionService 
{
    @Autowired
    private QuestionMapper questionMapper;

    /**
     * 查询试题列表
     * 
     * @param id 试题列表主键
     * @return 试题列表
     */
    @Override
    public Question selectQuestionById(Long id)
    {
        return questionMapper.selectQuestionById(id);
    }

    /**
     * 查询试题列表列表
     * 
     * @param question 试题列表
     * @return 试题列表
     */
    @Override
    public List<Question> selectQuestionList(Question question)
    {
        return questionMapper.selectQuestionList(question);
    }

    /**
     * 新增试题列表
     * 
     * @param question 试题列表
     * @return 结果
     */
    @Override
    public int insertQuestion(Question question)
    {
        return questionMapper.insertQuestion(question);
    }

    /**
     * 修改试题列表
     * 
     * @param question 试题列表
     * @return 结果
     */
    @Override
    public int updateQuestion(Question question)
    {
        return questionMapper.updateQuestion(question);
    }

    /**
     * 批量删除试题列表
     * 
     * @param ids 需要删除的试题列表主键
     * @return 结果
     */
    @Override
    public int deleteQuestionByIds(Long[] ids)
    {
        return questionMapper.deleteQuestionByIds(ids);
    }

    /**
     * 删除试题列表信息
     * 
     * @param id 试题列表主键
     * @return 结果
     */
    @Override
    public int deleteQuestionById(Long id)
    {
        return questionMapper.deleteQuestionById(id);
    }

    @Override
    public List<Question> selectAllQuestions() {
        return questionMapper.selectAllQuestions(); // 假设你有相应的Mapper或Repository
    }

    @Override
    public List<Question> getBySubjectIds(List<Integer> ids) {
        // 从数据库中查询所有符合条件的题目
        List<Question> allQuestions = questionMapper.getBySubjectIds(ids);

        // 按题型分组
        List<Question> singleChoiceQuestions = allQuestions.stream()
                .filter(q -> q.getQuestionType() == 1)
                .collect(Collectors.toList());

        List<Question> multipleChoiceQuestions = allQuestions.stream()
                .filter(q -> q.getQuestionType() == 2)
                .collect(Collectors.toList());

        List<Question> trueFalseQuestions = allQuestions.stream()
                .filter(q -> q.getQuestionType() == 3)
                .collect(Collectors.toList());

        // 从每个分组中随机抽取指定数量的题目
        List<Question> randomQuestions = new ArrayList<>();
        randomQuestions.addAll(getRandomSubset(singleChoiceQuestions, 10));
        randomQuestions.addAll(getRandomSubset(multipleChoiceQuestions, 5));
        randomQuestions.addAll(getRandomSubset(trueFalseQuestions, 5));

        return randomQuestions;
    }

    private List<Question> getRandomSubset(List<Question> questions, int count) {
        Collections.shuffle(questions); // 随机打乱列表
        return questions.stream().limit(count).collect(Collectors.toList());
    }

}
