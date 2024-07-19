package com.examol.exam.controller;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import javax.servlet.http.HttpServletResponse;

import com.examol.common.annotation.Anonymous;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.examol.common.annotation.Log;
import com.examol.common.core.controller.BaseController;
import com.examol.common.core.domain.AjaxResult;
import com.examol.common.enums.BusinessType;
import com.examol.exam.domain.Question;
import com.examol.exam.service.IQuestionService;
import com.examol.common.utils.poi.ExcelUtil;
import com.examol.common.core.page.TableDataInfo;

/**
 * 试题列表Controller
 *
 * @author group
 * @date 2024-07-09
 */
@RestController
@RequestMapping("/exam/question")
public class QuestionController extends BaseController
{
    @Autowired
    private IQuestionService questionService;

    /**
     * 查询试题列表列表
     */
    @PreAuthorize("@ss.hasPermi('exam:question:list')")
    @GetMapping("/list")
    public TableDataInfo list(Question question)
    {
        startPage();
        List<Question> list = questionService.selectQuestionList(question);
        return getDataTable(list);
    }

    /**
     * 导出试题列表列表
     */
    @PreAuthorize("@ss.hasPermi('exam:question:export')")
    @Log(title = "试题列表", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, Question question)
    {
        List<Question> list = questionService.selectQuestionList(question);
        ExcelUtil<Question> util = new ExcelUtil<Question>(Question.class);
        util.exportExcel(response, list, "试题列表数据");
    }

    /**
     * 获取试题列表详细信息
     */
    @PreAuthorize("@ss.hasPermi('exam:question:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(questionService.selectQuestionById(id));
    }

    /**
     * 新增试题列表
     */
    @PreAuthorize("@ss.hasPermi('exam:question:add')")
    @Log(title = "试题列表", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody Question question)
    {
        return toAjax(questionService.insertQuestion(question));
    }

    /**
     * 修改试题列表
     */
    @PreAuthorize("@ss.hasPermi('exam:question:edit')")
    @Log(title = "试题列表", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody Question question)
    {
        return toAjax(questionService.updateQuestion(question));
    }

    /**
     * 删除试题列表
     */
    @PreAuthorize("@ss.hasPermi('exam:question:remove')")
    @Log(title = "试题列表", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(questionService.deleteQuestionByIds(ids));
    }

    /**
     * 获取所有试题
     */
    @Anonymous
    //@PreAuthorize("@ss.hasPermi('exam:question:all')")
    @GetMapping("/all")
    public AjaxResult getAllQuestions() {
        List<Question> list = questionService.selectAllQuestions(); // 确保这个方法在服务层中被定义
        return success(list);
    }



    /**
     * 按照科目id获取试题
     */
    //@PreAuthorize("@ss.hasPermi('exam:question:all')")
    @GetMapping("/by-subjects")
    public AjaxResult getBySubjectIds(@RequestParam(required = false) String subjectIds) {
        List<Question> questions;
        List<Integer> ids = Arrays.stream(subjectIds.split(","))
                .map(Integer::parseInt)
                .collect(Collectors.toList());
        questions = questionService.getBySubjectIds(ids);
        return success(questions);
    }

}
