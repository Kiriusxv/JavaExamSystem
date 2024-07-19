package com.examol.exam.domain;

import lombok.*;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.examol.common.annotation.Excel;
import com.examol.common.core.domain.BaseEntity;

/**
 * 试题列表对象 t_question
 * 
 * @author group
 * @date 2024-07-09
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Question extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 题目ID */
    @Excel(name = "题目ID")
    private Long id;

    /** 题型 */
    @Excel(name = "题型")
    private Long questionType;

    /** 学科 */
    @Excel(name = "学科")
    private Long subjectId;

    /** 分值 */
    @Excel(name = "分值")
    private int score;

    /** 答案 */
    private String correct;

    /** 题干 */
    @Excel(name = "题干")
    private String content;

    /** 选项 */
    @Excel(name = "选项")
    private String options;

    /** 解析 */
    @Excel(name = "解析")
    private String explanation;

    /** 图片 */
    @Excel(name = "图片")
    private String image;

    /** 视频 */
    @Excel(name = "视频")
    private String video;

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("questionType", getQuestionType())
            .append("subjectId", getSubjectId())
            .append("score", getScore())
            .append("correct", getCorrect())
            .append("content", getContent())
            .append("options", getOptions())
            .append("explanation", getExplanation())
            .append("image", getImage())
            .append("video", getVideo())
            .toString();
    }
}
