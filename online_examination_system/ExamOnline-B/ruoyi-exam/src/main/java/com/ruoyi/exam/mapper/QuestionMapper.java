package com.examol.exam.mapper;

import java.util.List;
import com.examol.exam.domain.Question;
import org.apache.ibatis.annotations.Mapper;

/**
 * 试题列表Mapper接口
 * 
 * @author group
 * @date 2024-07-09
 */
@Mapper
public interface QuestionMapper 
{
    /**
     * 查询试题列表
     * 
     * @param id 试题列表主键
     * @return 试题列表
     */
    public Question selectQuestionById(Long id);

    /**
     * 查询试题列表列表
     * 
     * @param question 试题列表
     * @return 试题列表集合
     */
    public List<Question> selectQuestionList(Question question);

    /**
     * 新增试题列表
     * 
     * @param question 试题列表
     * @return 结果
     */
    public int insertQuestion(Question question);

    /**
     * 修改试题列表
     * 
     * @param question 试题列表
     * @return 结果
     */
    public int updateQuestion(Question question);

    /**
     * 删除试题列表
     * 
     * @param id 试题列表主键
     * @return 结果
     */
    public int deleteQuestionById(Long id);

    /**
     * 批量删除试题列表
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteQuestionByIds(Long[] ids);

    List<Question> selectAllQuestions();

    List<Question> getBySubjectIds(List<Integer> ids);
}
