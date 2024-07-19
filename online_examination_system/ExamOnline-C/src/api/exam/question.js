import request from '@/utils/request'

// 查询试题列表列表
export function listQuestion(query) {
  return request({
    url: '/exam/question/list',
    method: 'get',
    params: query
  })
}

// 查询试题列表详细
export function getQuestion(id) {
  return request({
    url: '/exam/question/' + id,
    method: 'get'
  })
}

// 新增试题列表
export function addQuestion(data) {
  return request({
    url: '/exam/question',
    method: 'post',
    data: data
  })
}

// 修改试题列表
export function updateQuestion(data) {
  return request({
    url: '/exam/question',
    method: 'put',
    data: data
  })
}

// 删除试题列表
export function delQuestion(id) {
  return request({
    url: '/exam/question/' + id,
    method: 'delete'
  })
}

// 获取考试题目
export function fetchQuestions(subjectIds) {
  const params = new URLSearchParams({ subjectIds: subjectIds.join(',') }).toString();
  return request({
    url: `/exam/question/by-subjects?${params}`,
    method: 'get'
  });
}

// 提交考试API
export function submit(data) {
  return request({
    url: '/exam/submit',
    method: 'post',
    data: data
  });
}

// 根据examId获取考试详情
export function fetchExamDetails(examId) {
  return request({
    url: `/exam/details/${examId}`,
    method: 'get'
  });
}

export function listScores(query) {
  return request({
    url: '/exam/score-history',
    method: 'get',
    params: query
  })
}